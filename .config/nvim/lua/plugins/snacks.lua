-- snacks ships with AstroNvim. Enable extra modules.
-- Dashboard config lives separately in `dashboard.lua`.
---@type LazySpec
return {
  "folke/snacks.nvim",
  opts = {
    lazygit = { enabled = true }, -- terminal-native lazygit float; works fine inside tmux
    scratch = { enabled = true },
    -- image = { enabled = true },
    -- ^ Inline images use the kitty graphics protocol. Flaky through tmux
    --   (needs `set -g allow-passthrough on`); reliable only in bare kitty.
  },
  keys = {
    { "<Leader>gg", function() require("snacks").lazygit() end, desc = "Lazygit (snacks)" },
    { "<Leader>gl", function() require("snacks").lazygit.log() end, desc = "Lazygit log (snacks)" },
    { "<Leader>.", function() require("snacks").scratch() end, desc = "Toggle scratch buffer" },
  },
}
