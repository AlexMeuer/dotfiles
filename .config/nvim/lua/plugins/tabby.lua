-- Tabby self-hosted inline completion (replaces Copilot).
--
-- vim-tabby v2 is an LSP client extension: it registers a `tabby` LSP server that
-- runs `tabby-agent --stdio`, then renders `textDocument/inlineCompletion`
-- results as ghost text. The server endpoint lives in
-- ~/.tabby-client/agent/config.toml, not here -- the plugin exposes no vim option
-- for it.
--
-- Keys are deliberately NOT <Tab>. vim-tabby's <Tab> conflict resolution reads
-- `maparg('<Tab>','i',0,1).rhs` to build a fallback, but blink.cmp maps <Tab> to a
-- Lua callback (rhs is nil), so Tabby would map <Tab> with no fallback and blink's
-- <Tab> would go dead. Alt combos sidestep blink entirely and are unmapped in
-- AstroNvim.
--
-- Alt rather than F16/F17: kitty encodes F13-F24 with private-use codepoints that
-- tmux cannot decode, and the terminfo-sequence workaround in kitty.conf never
-- produced a keypress in practice. Alt+key travels as plain ESC-prefixed bytes
-- through kitty, tmux and nvim with no protocol negotiation at all.
---@type LazySpec
return {
  "TabbyML/vim-tabby",
  lazy = false, -- plugin/tabby.vim calls tabby#Setup() at load; needs lspconfig ready
  dependencies = { "neovim/nvim-lspconfig" },
  init = function()
    -- Pinned to Node 22: tabby-agent 1.8.0 bundles an undici dispatcher whose
    -- handler interface Node 26 rejects with `InvalidArgumentError: invalid
    -- onError method`, so every request the agent makes fails at the client and
    -- no completions ever arrive. Node 22 health-checks the server fine.
    -- Prefix installed via the official tarball; `npm i -g --prefix` puts the
    -- agent alongside it. Drop this override once upstream ships a fix.
    local node22 = vim.fn.expand "~/.local/opt/node22"
    vim.g.tabby_agent_start_command = {
      node22 .. "/bin/node",
      node22 .. "/lib/node_modules/tabby-agent/dist/node/index.js",
      "--stdio",
    }
    vim.g.tabby_inline_completion_trigger = "auto"
    vim.g.tabby_inline_completion_keybinding_accept = "<M-l>"
    vim.g.tabby_inline_completion_keybinding_trigger_or_dismiss = "<M-]>"
  end,
}
