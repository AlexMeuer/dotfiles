return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "sainnhe/gruvbox-material",
    commit = "66f66f64788f66c8101aa35344dd005143356b6b",
  },
  { "rlane/pounce.nvim", event = 'BufRead' },
  "simrat39/rust-tools.nvim",
}
