-- Kept installed-but-disabled so switching back from Tabby is a one-line change:
-- flip `enabled` to true here and re-add the blink <Tab> accept chain (see git
-- history for commit 4a4d32f). Tabby is configured in plugins/tabby.lua.
---@type LazySpec
return {
  "zbirenbaum/copilot.lua",
  enabled = false,
}
