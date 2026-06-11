-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 },
      autopairs = true,
      cmp = true,
      highlighturl = true,
      notifications = true,
    },
    -- Passed to `vim.diagnostic.config()` — single source of truth for rendering.
    diagnostics = {
      virtual_text = true,
      virtual_lines = false,
      underline = true,
    },
    options = {
      opt = {
        relativenumber = true,
        number = true,
        spell = false,
        signcolumn = "yes",
        wrap = true,
        conceallevel = 1,
      },
    },
    mappings = {
      n = {
        L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- Flash on `f`/`F` instead of native find-char; disable community defaults `s`/`S`
        f = { function() require("flash").jump() end, desc = "Flash jump" },
        F = { function() require("flash").treesitter() end, desc = "Flash treesitter" },
        s = false,
        S = false,
      },
      x = {
        f = { function() require("flash").jump() end, desc = "Flash jump" },
        F = { function() require("flash").treesitter() end, desc = "Flash treesitter" },
        s = false,
        S = false,
      },
      o = {
        f = { function() require("flash").jump() end, desc = "Flash jump" },
        F = { function() require("flash").treesitter() end, desc = "Flash treesitter" },
        s = false,
        S = false,
      },
    },
  },
}
