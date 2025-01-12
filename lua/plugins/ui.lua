return {
      {
        "carbon-steel/detour.nvim",
        cmd = { "Detour", "DetourCurrentWindow" },
      },
      -- {
      --   "nvim-focus/focus.nvim",
      --   opts = {
      --     autoresize = {
      --       minwidth = 10,
      --       minheight = 8,
      --     },
      --   },
      -- },
      {
        "akinsho/bufferline.nvim",
        opts = {
          options = {
            -- indicator = { style = "underline" },
          },
        },
      },
      {
        "nvim-lualine/lualine.nvim",
        opts = function(_, opts)
        -- table.insert(opts.sections.lualine_x, 1, { clients_lsp, color = LazyVim.ui.fg("Special"), separator = " " })
        -- table.insert(opts.sections.lualine_x, 2, { "%=", separator = " " })

        -- table.insert(opts.extensions, "overseer")
        table.insert(opts.extensions, "toggleterm")

        -- opts.options.component_separators = { left = "|", right = "|" }
        -- opts.options.section_separators = { left = "", right = "" }

         opts.options.component_separators = { left = "", right = "" }
         opts.options.section_separators = { left = "", right = "" }

        --opts.options.component_separators = { left = "", right = "" }
        --opts.options.section_separators = { left = "", right = "" }
        end,
      },
      { "indent-blankline.nvim", enabled = false },
      -- {
      --   "echasnovski/mini.indentscope",
      --   opts = {
      --     draw = {
      --       animation = require("mini.indentscope").gen_animation.none(),
      --     },
      --   },
      -- },

--      {
--        "NvChad/nvim-colorizer.lua",
--        event = "VeryLazy",
--        opts = { user_default_options = { names = false } },
--        cmd = {
--          "ColorizerAttachToBuffer",
--          "ColorizerDetachFromBuffer",
--          "ColorizerReloadAllBuffers",
--          "ColorizerToggle",
--        },
--      },

      -- {
      --   "rcarriga/nvim-notify",
      --   init = function()
      --     require("telescope").load_extension("notify")
      --   end,
      -- },
      {
        "folke/noice.nvim",
        opts = {
          lsp = {
            hover = {
              silent = true,
            },
          },
        },
        keys = {
          -- stylua: ignore
          { "<leader>snh", function() require("noice").cmd("telescope") end, desc = "Noice History" },
        },
      },
      {
        "stevearc/dressing.nvim",
        opts = {
          input = {
            get_config = function(opts)
            if opts.kind == "center" then
              return {
                relative = "editor",
              }
              end
              end,
          },
        },
      },
      {
        "xiyaowong/transparent.nvim",
        opts = {
          groups = { -- table: default groups
            "Normal",
            "NormalNC",
            "Comment",
            "Constant",
            "Special",
            "Identifier",
            "Statement",
            "PreProc",
            "Type",
            "Underlined",
            "Todo",
            "String",
            "Function",
            "Conditional",
            "Repeat",
            "Operator",
            "Structure",
            "LineNr",
            "NonText",
            "SignColumn",
            "CursorLine",
            "CursorLineNr",
            -- "StatusLine",
            -- "StatusLineNC",
            "EndOfBuffer",
          },
        },
      },
      {
        "2kabhishek/nerdy.nvim",
        dependencies = {
          "stevearc/dressing.nvim",
          "nvim-telescope/telescope.nvim",
        },
        cmd = "Nerdy",
      },
    }
