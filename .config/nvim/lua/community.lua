-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },

  -- Copilot: import kept so re-enabling is one line (plugins/copilot.lua sets
  -- enabled = false). Replaced by Tabby, see plugins/tabby.lua.
  { import = "astrocommunity.completion.copilot-lua" },

  -- Motion: flash enhances f/t/F/T with labels instead of replacing them
  { import = "astrocommunity.motion.flash-nvim" },
  -- Named, persistent, project-scoped file slots
  { import = "astrocommunity.motion.harpoon" },

  -- In-buffer markdown rendering (replaces archived glow.nvim; tmux-safe, no graphics protocol)
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },

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

  -- Project-wide find & replace with live preview (ripgrep-backed; replaces nvim-spectre)
  { import = "astrocommunity.search.grug-far-nvim" },
}
