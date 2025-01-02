return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {},
        never_show = {
          ".git",
          ".astro",
          ".vscode",
          ".husky",
          ".idea",
          ".DS_Store",
          "thumbs.db",
          ".dart_tools",
          "__pycache__",
        },
      },
    },
  },
}
