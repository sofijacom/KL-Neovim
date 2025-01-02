 ---@diagnostic disable-next-line: unused-local
local LOGOS = {
  neovim_bloody = [[
 ███▄    █    ▓█████     ▒█████      ██▒   █▓    ██▓    ███▄ ▄███▓
 ██ ▀█   █    ▓█   ▀    ▒██▒  ██▒   ▓██░   █▒   ▓██▒   ▓██▒▀█▀ ██▒
▓██  ▀█ ██▒   ▒███      ▒██░  ██▒    ▓██  █▒░   ▒██▒   ▓██    ▓██░
▓██▒  ▐▌██▒   ▒▓█  ▄    ▒██   ██░     ▒██ █░░   ░██░   ▒██    ▒██
▒██░   ▓██░   ░▒████▒   ░ ████▓▒░      ▒▀█░     ░██░   ▒██▒   ░██▒
░ ▒░   ▒ ▒    ░░ ▒░ ░   ░ ▒░▒░▒░       ░ ▐░     ░▓     ░ ▒░   ░  ░
░ ░░   ░ ▒░    ░ ░  ░     ░ ▒ ▒░       ░ ░░      ▒ ░   ░  ░      ░
   ░   ░ ░       ░      ░ ░ ░ ▒          ░░      ▒ ░   ░      ░
         ░       ░  ░       ░ ░           ░      ░            ░
                                         ░
  ]],
  saturn_view = [[
                                 o         .                       .
                .               0                            .
     *   .                  .              .        .   *          .
  .         .                     .       .           .      .        .
                             O        .             +     .
         .              .   *              .           .
       +        .
                 .        o                   ,                ,    ,
 .                                               .
      .          ,      /                                     +
   .          .     .  /              .                   .            .
     .          ,,,  ,o          ,             .                .
              #*#,  #/#,,  .                              .        .
            ##*#,  #/##,#               .                        .
   .       ##*#,  #O##,#*#                +     .                     ,
        .    #,  #/##,#*##              .                     .
      .     \   #%##,#*##         .                             ,       .
          .   _ /      /.   .                    .             .          ,
  ,            /   -             .                         .
____^/\___^--_O__/\_____-^^-^--_______/\/\---/\___________---______________
   /\^   ^  ^    ^       ^/\        ^^ ^  '\ ^          ^       ---
         --       __ _-            --  -      -         ---  __       ^
   --  __                      ___--  ^  ^           ^^ ^   ^-__   --  __
  ]],
  kl_neovim = [[
    ★　✯   🛸                    🪐   .°•
    ° ★　•       🛰
 _   __ _        _   _  _____ _____  _   _ ________  ___
| | / /| |      | \ | ||  ___|  _  || | | |_   _|  \/  |
| |/ / | |  °   |  \| || |__ | | | || | | | | | | .  . |
|    \ | |      | . ` ||  __|| | | || | | | | | | |\/| |
| |\  \| |____  | |\  || |___\ \_/ /\ \_/ /_| |_| |  | |
\_| \_/\_____/  \_| \_/\____/ \___/  \___/ \___/\_|  |_/
  ]],

}

local function clients_lsp()
  local bufnr = vim.api.nvim_get_current_buf()

  local clients = vim.lsp.get_clients({ bufnr = bufnr })
  if next(clients) == nil then
    return ""
  end

  local c = {}
  for _, client in pairs(clients) do
    table.insert(c, client.name)
  end
  return "  LSP: " .. table.concat(c, ", ")
end

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
      opts.options.component_separators = { left = "", right = "" }
      opts.options.section_separators = { left = "", right = "" }
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
  {
    "NvChad/nvim-colorizer.lua",
    event = "VeryLazy",
    opts = { user_default_options = { names = false } },
    cmd = {
      "ColorizerAttachToBuffer",
      "ColorizerDetachFromBuffer",
      "ColorizerReloadAllBuffers",
      "ColorizerToggle",
    },
  },
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
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      -- vim.fn.matchadd("Error", "[░▒]")
      -- vim.fn.matchadd("Function", "[▓█▄▀▐▌]")
      local logo = string.rep("\n", 3) .. LOGOS.kl_neovim .. "\n"
      opts.config.header = vim.split(logo, "\n")
      -- stylua: ignore
      opts.config.center = {
        { action = LazyVim.telescope("files"),                 desc = " Find File",       icon = " ", key = "f" },
        { action = "ene | startinsert",                        desc = " New File",        icon = " ", key = "n" },
        { action = "Telescope oldfiles",                       desc = " Recent Files",    icon = " ", key = "r" },
        { action = "Telescope live_grep",                      desc = " Find Text",       icon = " ", key = "g" },
        { action = [[lua LazyVim.telescope.config_files()()]], desc = " Config",          icon = " ", key = "c" },
        { action = 'lua require("persistence").load()',        desc = " Restore Session", icon = " ", key = "s" },
        { action = "LazyExtras",                               desc = " Lazy Extras",     icon = " ", key = "x" },
        { action = "Lazy",                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
        { action = "qa",                                       desc = " Quit",            icon = " ", key = "q" },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end
    end,
  },
}
