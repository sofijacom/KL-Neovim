-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- https://github.com/AntonVanAssche/music-controls.nvim
require('lualine').setup {
    sections = {
        lualine_x = {
            require("music-controls")._statusline,
        }
    }
}
