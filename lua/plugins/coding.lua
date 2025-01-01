return {
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     "hrsh7th/cmp-cmdline",
  --   },
  -- },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      "chrisgrieser/cmp-nerdfont",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      vim.list_extend(opts.sources, {
        { name = "emoji" },
        { name = "nerdfont" },
      })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      window = {
        completion = require("cmp").config.window.bordered(),
        documentation = require("cmp").config.window.bordered(),
      },
      experimental = {
        ghost_text = {
          hl_group = nil,
        },
      },
    },
  },
  -- {
  --   "L3MON4D3/LuaSnip",
  --   opts = {
  --     region_check_events = "InsertEnter",
  --     delete_check_events = "InsertLeave",
  --   },
  -- },
  -- { "echasnovski/mini.comment", enabled = false },
  {
    "numToStr/Comment.nvim",
    keys = {
      { "gcc", mode = "n", desc = "Comment toggle current line" },
      { "gc", mode = { "n", "o" }, desc = "Comment toggle linewise" },
      { "gc", mode = "x", desc = "Comment toggle linewise (visual)" },
      { "gbc", mode = "n", desc = "Comment toggle current block" },
      { "gb", mode = { "n", "o" }, desc = "Comment toggle blockwise" },
      { "gb", mode = "x", desc = "Comment toggle blockwise (visual)" },
    },
    config = function(_, opts)
      require("Comment").setup(opts)
    end,
  },
  { "echasnovski/mini.pairs", enabled = false },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    -- dependencies = { "hrsh7th/nvim-cmp" },
    opts = {
      fast_wrap = {},
      disable_filetype = { "TelescopePrompt", "vim" },
    },
    config = function(_, opts)
      require("nvim-autopairs").setup(opts)

      -- setup cmp for autopairs
      -- local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      -- require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },
}
