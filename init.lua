-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require('lualine').setup {
    sections = {
        lualine_x = {
            require("music-controls")._statusline,
        }
    }
}
