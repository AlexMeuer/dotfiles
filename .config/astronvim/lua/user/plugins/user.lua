return {
  {
    "sainnhe/gruvbox-material",
    -- commit = "66f66f64788f66c8101aa35344dd005143356b6b",
  },
  -- { "sainnhe/everforest" },
  { "rlane/pounce.nvim", keys = { { "f", "<cmd>Pounce<cr>", desc = "Pounce" } } },
  {
    "folke/todo-comments.nvim",
    event = "BufEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  { "gennaro-tedesco/nvim-peekup", event = "VeryLazy" },
  {
    "folke/twilight.nvim",
    keys = { { "<leader>ut", "<cmd>Twilight<cr>", desc = "Twilight (code dimming)" } },
  },
  {
    "folke/zen-mode.nvim",
    keys = {
      { "<leader>uz", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    },
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = { { "<leader>lt", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" } },
  },
  { "anuvyklack/middleclass" },
  { "anuvyklack/animation.nvim" },
  {
    "anuvyklack/windows.nvim",
    requires = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim",
    },
    config = function()
      vim.o.winwidth = 10
      vim.o.winminwidth = 10
      vim.o.equalalways = false
      require("windows").setup()
    end,
    keys = {
      { "<leader>wt", "<cmd>WindowsToggleAutowidth<cr>", desc = "Toggle autowidth" },
      { "<leader>ww", "<cmd>WindowsMaximize<cr>", desc = "Maximize current window" },
      { "<C-w>z", "<cmd>WindowsMaximize<cr>" },
    },
  },
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
}
