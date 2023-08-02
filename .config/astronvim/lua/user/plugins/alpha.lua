return {
  "goolord/alpha-nvim",
  cmd = "Alpha",
  opts = function()
    local dashboard = require "alpha.themes.dashboard"
    dashboard.section.header.val = {
      "         ████████████",
      "       ██            ██",
      "       ██            ██",
      "       ██  ██    ██  ██",
      "       ▓▓            ▓▓",
      "       ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓",
      "       ▓▓▓▓  ████  ▓▓▓▓",
      "       ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓",
      "         ▓▓▓▓▓▓▓▓▓▓▓▓",
      "             ▓▓▓▓▓▓",
      "               ▓▓▓▓",
      "",
      " █████╗ ██╗     ███████╗██╗  ██╗",
      "██╔══██╗██║     ██╔════╝╚██╗██╔╝",
      "███████║██║     █████╗   ╚███╔╝",
      "██╔══██║██║     ██╔══╝   ██╔██╗",
      "██║  ██║███████╗███████╗██╔╝ ██╗",
      "╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝",
      "",
      "    ██╗   ██╗██╗███╗   ███╗",
      "    ██║   ██║██║████╗ ████║",
      "    ██║   ██║██║██╔████╔██║",
      "    ╚██╗ ██╔╝██║██║╚██╔╝██║",
      "     ╚████╔╝ ██║██║ ╚═╝ ██║",
      "      ╚═══╝  ╚═╝╚═╝     ╚═╝",
    }
    dashboard.section.header.opts.hl = "DashboardHeader"

    local button = require("astronvim.utils").alpha_button
    local get_icon = require("astronvim.utils").get_icon
    dashboard.section.buttons.val = {
      button("LDR f p", "󰐝  Projects  "),
      button("LDR s s", "󰊠  Spectre  "),
      button("LDR f f", get_icon("Search", 2, true) .. "Files  "),
      -- button("LDR f o", get_icon("DefaultFile", 2, true) .. "Recents  "),
      -- button("LDR f w", get_icon("WordFile", 2, true) .. "Find Word  "),
      button("LDR f '", get_icon("Bookmarks", 2, true) .. "Bookmarks  "),
      button("LDR S l", get_icon("Refresh", 2, true) .. "Session  "),
    }

    dashboard.config.layout[1].val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) }
    dashboard.config.layout[3].val = 5
    dashboard.config.opts.noautocmd = true
    return dashboard
  end,
  config = function(_, opts)
    require("alpha").setup(opts.config)

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      desc = "Add Alpha dashboard footer",
      once = true,
      callback = function()
        local stats = require("lazy").stats()
        opts.section.footer.val = {
          " ",
          " ",
          " ",
          " " .. stats.startuptime .. " ms 󰢷",
        }
        opts.section.footer.opts.hl = "DashboardFooter"
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}