-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.options")

-- https://github.com/AntonVanAssche/music-controls.nvim
-- sudo pacman -S playerctl
require('lualine').setup {
    sections = {
        lualine_x = {
            require("music-controls")._statusline,
        }
    }
}
-- Switch color scheme
-- dracula , rose-pine , rose-pine-dawn , cyberdream , peachpuff, nightfox
-- tokyonight , catppuccin-macchiato , catppuccin-latte , github_dark_default , github_light_default, zellner , vim , elflord
vim.o.termguicolors = true
vim.cmd('colorscheme catppuccin-macchiato')
