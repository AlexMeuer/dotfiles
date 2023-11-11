-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
local utils = require "astronvim.utils"
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find Projects" },
    ["<leader>ts"] = {
      -- Assumes that toggle term is available.
      function() utils.toggle_term_cmd "spt" end,
      desc = "ToggleTerm spotify",
    },
    ["<leader>m"] = { desc = "Music" },
    ["<leader>mo"] = {
      -- Assumes that toggle term is available.
      function() utils.toggle_term_cmd "spt" end,
      desc = "ToggleTerm spotify",
    },
    ["<leader>mt"] = {
      function() vim.fn.jobstart "spt playback --toggle" end,
      desc = "Toggle play/pause",
    },
    ["<leader>mn"] = {
      function() vim.fn.jobstart "spt playback --next" end,
      desc = "Next song",
    },
    ["<leader>mp"] = {
      function() vim.fn.jobstart "spt playback --previous" end,
      desc = "Previous song",
    },
    ["<leader>ms"] = {
      function() vim.fn.jobstart "spt playback --shuffle" end,
      desc = "Toggle shufle",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
