-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
local utils = require "astronvim.utils"
local Job = require "plenary.job"
local notify = require "notify"
local runSpotify = function(args, title)
  Job
    :new({
      command = "spt",
      args = args,
      on_exit = function(j, return_val) notify(j:result(), return_val == 0 and "info" or "error", { title = title }) end,
    })
    :start()
end

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
      function() runSpotify({ "playback", "--toggle" }, "Playback Toggled") end,
      desc = "Toggle play/pause",
    },
    ["<leader>mn"] = {
      function() runSpotify({ "playback", "--next" }, "Next Track") end,
      desc = "Next song",
    },
    ["<leader>mp"] = {

      function() runSpotify({ "playback", "--previous" }, "Previous Track") end,
      desc = "Previous song",
    },
    ["<leader>ms"] = {

      function() runSpotify({ "playback", "--shuffle" }, "Shuffle") end,
      desc = "Toggle shufle",
    },
    ["<leader>mi"] = {
      function() runSpotify({ "playback" }, "Info") end,
      desc = "Info (Now Playing)",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
