return {
    {
      "carbon-steel/detour.nvim",
      config = function ()
      vim.keymap.set('n', '<c-w><enter>', ":Detour<cr>")
      vim.keymap.set('n', '<c-w>.', ":DetourCurrentWindow<cr>")
      end
    },

    {
      'akinsho/bufferline.nvim',
       version = "*",
       dependencies = 'nvim-tree/nvim-web-devicons'
    },

    {
      "nvim-lualine/lualine.nvim",
      opts = function(_, opts)

      -- table.insert(opts.extensions, "overseer")
      table.insert(opts.extensions, "toggleterm")

      -- opts.options.component_separators = { left = "|", right = "|" }
      -- opts.options.section_separators = { left = "", right = "" }

      -- opts.options.component_separators = { left = "", right = "" }
      -- opts.options.section_separators = { left = "", right = "" }

      opts.options.component_separators = { left = "╱", right = "╲" }
      opts.options.section_separators = { left = "", right = "" }
                  
      -- opts.options.component_separators = { left = " ", right = " " }
      -- opts.options.section_separators = { left = " ", right = " " }

      -- opts.options.component_separators = { left = "╲", right = "╱" }
      -- opts.options.section_separators = { left = "", right = "" }
                  
      -- opts.options.component_separators = { left = "", right = "" }
      -- opts.options.section_separators = { left = "", right = "" }
        end,
      },

      { "indent-blankline.nvim", enabled = false },

      -- lazy.nvim
      {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
          -- add any options here
      },
        dependencies = {
          -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
          "MunifTanjim/nui.nvim",
          -- OPTIONAL:
          --   `nvim-notify` is only needed, if you want to use the notification view.
          --   If not available, we use `mini` as the fallback
          "rcarriga/nvim-notify",
        }
      },

      {
        "xiyaowong/transparent.nvim",
        opts = {
          -- table: default groups
          groups = {
            'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
            'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
            'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
            'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
            'EndOfBuffer',
          },
          -- table: additional groups that should be cleared
          extra_groups = {},
          -- table: groups you don't want to clear
          exclude_groups = {},
          -- function: code to be executed after highlight groups are cleared
          -- Also the user event "TransparentClear" will be triggered
          on_clear = function() end,
        },
       },
    }
