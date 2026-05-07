return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
-- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>e",
        "<cmd>Yazi<cr>",
        desc = "Open Yazi",
      },
    },
    opts = {
      open_for_directories = true,
    },
  },
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
          "vim", "lua", "vimdoc",
          "html", "css","lua",
        "bash", "python", "go", "rust", "java", "typescript",
        "tsx","json", "yaml", "dockerfile", "toml", "terraform","sql", "cpp", "javascript"
        },
      },
      highlight = {
        enable = true,
      }
  },

  -- Floating terminal 
    {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    direction = "horizontal",
    size = 12,

    shading_factor = 0,
    shade_terminals = false,

    highlights = {
      Normal = {
        bg = "NONE",
      },
      NormalFloat = {
        bg = "NONE",
      },
      FloatBorder = {
        bg = "NONE",
      },
    },
  },

  keys = {
    {
      "<leader>tt",
      "<cmd>ToggleTerm<cr>",
      desc = "Toggle terminal",
    },
  },
  },
    -- Lazygit integration
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      {
        "<leader>gg",
        "<cmd>LazyGit<cr>",
        desc = "Open LazyGit",
      },
    },
  },

  -- Harpoon
  {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    local harpoon = require("harpoon")

    harpoon:setup({
      settings = {
        save_on_toggle = true,
      },
    })

    vim.keymap.set("n", "<leader>pa", function()
      harpoon:list():add()
      print("Harpoon added")
    end, { desc = "Harpoon Add" })

    vim.keymap.set("n", "<leader>pm", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Harpoon Menu" })

    vim.keymap.set("n", "<leader>1", function()
      harpoon:list():select(1)
    end)

    vim.keymap.set("n", "<leader>2", function()
      harpoon:list():select(2)
    end)
  end,
},
     -- Flash navigation
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
    },
  },

  -- Trouble diagnostics panel
  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics",
      },
    },
  },

  -- Better UI prompts
   {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    version = "*",
    depenrencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
  },

  -- Noice UI
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      {
        "rcarriga/nvim-notify",
        opts = {
          background_colour = "#000000",
        },
      },
    },
    opts = {},
  },

  {
    "folke/todo-comments.nvim", dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {},
  },
}
