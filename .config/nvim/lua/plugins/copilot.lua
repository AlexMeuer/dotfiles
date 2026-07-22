-- Make <Tab> accept Copilot inline suggestions.
--
-- Two separate engines run here: copilot.lua draws inline ghost text, while
-- blink.cmp drives the popup completion menu. By default copilot's accept key
-- is <M-l> and blink owns <Tab>, so <Tab> never touched Copilot.
--
-- We prepend a Copilot check to blink's <Tab> chain. Because copilot's
-- `hide_during_completion` (default true) hides ghost text whenever the blink
-- menu is visible, the two never fight:
--   * Copilot ghost text showing -> <Tab> accepts it.
--   * blink menu showing         -> <Tab> cycles/expands as before.
--   * neither                    -> falls back to a literal tab.

---@type LazySpec
return {
  "Saghen/blink.cmp",
  optional = true,
  opts = function(_, opts)
    -- Reimplemented locally; AstroNvim's own copy is a file-scoped local.
    local function has_words_before()
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0
        and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
    end

    opts.keymap = opts.keymap or {}
    opts.keymap["<Tab>"] = {
      function()
        local ok, suggestion = pcall(require, "copilot.suggestion")
        if ok and suggestion.is_visible() then
          suggestion.accept()
          return true -- consume <Tab>; stop the chain
        end
      end,
      "select_next",
      "snippet_forward",
      function(cmp)
        if has_words_before() or vim.api.nvim_get_mode().mode == "c" then return cmp.show() end
      end,
      "fallback",
    }
  end,
}
