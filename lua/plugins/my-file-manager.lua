-- this file is: /Users/mikavilpas/.config/nvim/lua/plugins/my-file-manager.lua
---@type LazySpec
return {
    {
        "mikavilpas/yazi.nvim",
        keys = {
            {
                "<up>",
                function()
                require("yazi").yazi()
                end,
            },
        },
    },
    {
        "Rolv-Apneseth/starship.yazi",
        lazy = true,
        build = function(plugin)
        require("yazi.plugin").build_plugin(plugin)
        end,
    },
    {
        -- example: include a flavor
        "BennyOe/onedark.yazi",
        lazy = true,
        build = function(plugin)
        require("yazi.plugin").build_flavor(plugin)
        end,
    },
    {
        -- example: include a flavor from a subdirectory. There are lots of flavors
        -- available in https://github.com/yazi-rs/flavors
        "yazi-rs/flavors",
        name = "yazi-flavor-catppuccino-macchiato",
        lazy = true,
        build = function(spec)
        require("yazi.plugin").build_flavor(spec, {
            sub_dir = "catppuccin-macchiato.yazi",
        })
        end,
    },
}
