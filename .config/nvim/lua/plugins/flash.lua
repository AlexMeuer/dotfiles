-- Tweak astrocommunity.motion.flash-nvim.
-- Key remaps (`f` for jump, disable `s`) live in astrocore.lua, since the
-- community module defines its flash keys via AstroCore mappings.
---@type LazySpec
return {
  "folke/flash.nvim",
  opts = {
    -- Disable the f/t/F/T char-mode enhancement so it doesn't re-grab `f`.
    modes = { char = { enabled = false } },
  },
}
