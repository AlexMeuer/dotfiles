return {
  -- Colorscheme(s)
  { "sainnhe/gruvbox-material" },
  { "sainnhe/everforest" },

  -- Must-have: fuzzy jumper
  { "rlane/pounce.nvim", keys = { { "f", "<cmd>Pounce<cr>", desc = "Pounce" } } },

  -- Navigate aruound kitty and nvim with same pane bindings
  -- Additional kitty setup required. https://github.com/knubie/vim-kitty-navigator
  {
    "knubie/vim-kitty-navigator",
    event = "VeryLazy",
  },

  -- See and select registers
  { "gennaro-tedesco/nvim-peekup", event = "VeryLazy" },

  {
    "folke/twilight.nvim",
    keys = { { "<leader>ux", "<cmd>Twilight<cr>", desc = "Twilight (code dimming)" } },
  },
  {
    "folke/zen-mode.nvim",
    keys = {
      { "<leader>uZ", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
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
      { "<C-w>t", "<cmd>WindowsToggleAutowidth<cr>", desc = "Toggle autowidth" },
      { "<C-w>z", "<cmd>WindowsMaximize<cr>", desc = "Maximize" },
    },
  },

  -- Markdown previewer
  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },

  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = "*", -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
    opts = {
      -- add any opts here
      -- for example
      provider = "copilot", -- or "openai" etc
      -- copilot = {
      --   disabled_tools = {
      --     "list_files",
      --     "search_files",
      --     "read_file",
      --     "create_file",
      --     "rename_file",
      --     "delete_file",
      --     "create_dir",
      --     "rename_dir",
      --     "delete_dir",
      --     "bash",
      --   },
      -- },
      -- openai = {
      --   endpoint = "https://api.openai.com/v1",
      --   model = "gpt-4o", -- your desired model (or use gpt-4o, etc.)
      --   timeout = 30000, -- timeout in milliseconds
      --   temperature = 0, -- adjust if needed
      --   max_tokens = 4096,
      --   -- reasoning_effort = "high" -- only supported for reasoning models (o1, etc.)
      -- },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "echasnovski/mini.pick", -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua", -- for file_selector provider fzf
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
