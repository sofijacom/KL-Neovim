-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Fix descrepancy between nvim builtin matching (%) and nvim-comment plugin
map("n", "<leader>_gc", "<CMD>call CommentOperator(visualmode())<CR>")

-- Paste Above / Below Current Line
map("n", "<leader>p", "o<C-c>p==", { desc = "Paste Below" })
map("n", "<leader>P", "O<C-c>P==", { desc = "Paste Above" })

map("n", "<leader>si", "<cmd>Nerdy<cr>", { desc = "Search Nerd Icons" })
