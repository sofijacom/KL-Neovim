return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      popup_border_style = "rounded",
      window = {
        position = "float",
        -- width = 35,
        mappings = {
          ["h"] = function(state)
            local node = state.tree:get_node()
            if node.type == "directory" and node:is_expanded() then
              state.commands.toggle_node(state)
            else
              require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
            end
          end,
          ["l"] = function(state)
            local node = state.tree:get_node()
            if node.type == "directory" then
              if not node:is_expanded() then
                state.commands.toggle_node(state)
              elseif node:has_children() then
                require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
              end
            elseif node.type == "file" then
              require("neo-tree.sources.filesystem.commands").open(state)
            end
          end,
          -- ["h"] = "close_node",
          -- ["l"] = "open",
        },
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          always_show = {
            ".gitignore",
          },
        },
      },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        prompt_prefix = "   ",
        selection_caret = "󰊠 ",
        sorting_strategy = "ascending",
        layout_strategy = "flex",
        layout_config = { prompt_position = "top" },
        winblend = 0,
      },
    },
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      open_mapping = [[<c-\>]],
    },
  },

  -- {
  --   "stevearc/overseer.nvim",
  --   lazy = false,
  --   opts = {
  --     templates = { "builtin" },
  --   },
  -- },

  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        -- ["<leader>o"] = { name = "+overseer" },
        ["<leader>t"] = { name = "+tasks" },
      },
    },
  },
}
