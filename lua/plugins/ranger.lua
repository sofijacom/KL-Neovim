return {
    "kelly-lin/ranger.nvim",
    config = function()
    require("ranger-nvim").setup({ replace_netrw = true })
    vim.api.nvim_set_keymap("n", "<leader>+", "", {
        desc = "Open Ranger",
        noremap = true,
        callback = function()
        require("ranger-nvim").open(true)
        end,
    })
    end,
}
