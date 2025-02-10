-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.options")

-- https://github.com/AntonVanAssche/music-controls.nvim
-- Music Controls requires playerctl to be installed in order to work properly.
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

-- Windline animation
--require('wlsample.basic')
--require('wlsample.wind')
--require('wlsample.airline')
--require('wlsample.test_add_component')
--  the animated alternative. you can toggle animation by press `<leader>u9`
--require('wlsample.airline_anim')

