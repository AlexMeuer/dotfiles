return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },

  { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- { import = "astrocommunity.editing-support.chatgpt-nvim" },
  {
    import = "astrocommunity.diagnostics.lsp_lines-nvim",
    keys = { "<leader>dl", 'require("lsp_lines").toggle()', desc = "Toggle lsp_lines" },
  },

  { import = "astrocommunity.media.cord-nvim" },

  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },

  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.proto" },

  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.dart" },
  -- { import = "astrocommunity.pack.nix" },
  -- { import = "astrocommunity.pack.cs" },

  { import = "astrocommunity.pack.docker" },

  { import = "astrocommunity.media.cord-nvim" },
  { import = "astrocommunity.search.nvim-spectre" },
  { import = "astrocommunity.project.project-nvim" },
}
