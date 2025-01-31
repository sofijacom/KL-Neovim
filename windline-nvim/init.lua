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

--require('wlsample.basic')
--require('wlsample.wind')
--require('wlsample.airline')

--  the animated alternative. you can toggle animation by press `<leader>u9`
-- require('wlsample.airline_anim')
