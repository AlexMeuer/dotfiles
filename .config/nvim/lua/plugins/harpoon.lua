-- Override astrocommunity.motion.harpoon: key lists by git root instead of cwd,
-- so marks stay stable across `:cd` within a repo (one list per repo).
---@type LazySpec
return {
  "ThePrimeagen/harpoon",
  opts = {
    settings = {
      key = function() return vim.fs.root(0, ".git") or vim.loop.cwd() end,
    },
  },
  -- harpoon2's setup is a method (`Harpoon:setup`), so it must be called with `:`,
  -- not lazy's default `require(main).setup(opts)` (which would pass opts as self).
  config = function(_, opts) require("harpoon"):setup(opts) end,
}
