---@type LazySpec
return {
  -- Colorschemes
  { "sainnhe/gruvbox-material" },

  -- Disable shipped outline (using LSP/treesitter nav instead)
  { "stevearc/aerial.nvim", enabled = false },

  -- Seamless nav across nvim splits + tmux/kitty/wezterm panes (replaces vim-kitty-navigator)
  {
    "mrjones2014/smart-splits.nvim",
    lazy = false,
    build = "./kitty/install-kittens.bash",
    opts = {
      -- tmux is the closer multiplexer when running kitty → tmux → nvim.
      -- At nvim edge, smart-splits shells out to `tmux select-pane` to switch panes.
      multiplexer_integration = "tmux",
    },
    keys = {
      { "<C-h>", function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" },
      { "<C-j>", function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" },
      { "<C-k>", function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" },
      { "<C-l>", function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" },
    },
  },

  -- Focus modes
  {
    "folke/twilight.nvim",
    keys = { { "<leader>ux", "<cmd>Twilight<cr>", desc = "Twilight (code dimming)" } },
  },
  {
    "folke/zen-mode.nvim",
    keys = { { "<leader>uZ", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },
}
