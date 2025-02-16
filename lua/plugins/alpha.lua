return {

  { "folke/snacks.nvim", opts = { dashboard = { enabled = false } } },
  -- Dashboard. This runs when neovim starts, and is what displays
  -- the "LAZYVIM" banner.
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    enabled = true,
    init = false,
    opts = function()
      local datetime = os.date(" %d-%m-%Y    %H:%M")
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
        ★　✯   🛸      🌓             🪐   .°•  ☄
    🌎           ° ★　•       🛰                   🚀
 _   __ _        _   _  _____ _____  _   _ ________  ___
| | / /| |      | \ | ||  ___|  _  || | | |_   _|  \/  |
| |/ / | |  °   |  \| || |__ | | | || | | | | | | .  . |
|    \ | |      | . ` ||  __|| | | || | | | | | | |\/| |
| |\  \| |____  | |\  || |___\ \_/ /\ \_/ /_| |_| |  | |
\_| \_/\_____/  \_| \_/\____/ \___/  \___/ \___/\_|  |_/
      ]]

     local sharp = [[
                                             
      ████ ██████           █████      ██
     ███████████             █████ 
     █████████ ███████████████████ ███   ███████████
    █████████  ███    █████████████ █████ ██████████████
   █████████ ██████████ █████████ █████ █████ ████ █████
 ███████████ ███    ███ █████████ █████ █████ ████ █████
██████  █████████████████████ ████ █████ █████ ████ ██████

                         ]] .. datetime .. [[
      ]]

      -- logo style: logo , sharp
      dashboard.section.header.val = vim.split(sharp, "\n")
      -- stylua: ignore
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file",       "<cmd> lua LazyVim.pick()() <cr>"),
        dashboard.button("n", " " .. " New file",        [[<cmd> ene <BAR> startinsert <cr>]]),
        dashboard.button("r", " " .. " Recent files",    [[<cmd> lua LazyVim.pick("oldfiles")() <cr>]]),
        dashboard.button("g", " " .. " Find text",       [[<cmd> lua LazyVim.pick("live_grep")() <cr>]]),
        dashboard.button("c", " " .. " Config",          "<cmd> lua LazyVim.pick.config_files()() <cr>"),
        dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
        dashboard.button("x", " " .. " Lazy Extras",     "<cmd> LazyExtras <cr>"),
        dashboard.button("l", "󰒲 " .. " Lazy",            "<cmd> Lazy <cr>"),
        dashboard.button("q", " " .. " Quit",            "<cmd> qa <cr>"),
      }

      for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = "AlphaButtons"
        button.opts.hl_shortcut = "AlphaShortcut"
        end
        dashboard.section.header.opts.hl = "AlphaHeader"
        dashboard.section.buttons.opts.hl = "AlphaButtons"
        dashboard.section.footer.opts.hl = "AlphaFooter"
        dashboard.opts.layout[1].val = 2
        return dashboard
        end,
        config = function(_, dashboard)
        -- close Lazy and re-open when the dashboard is ready
        if vim.o.filetype == "lazy" then
          vim.cmd.close()
          vim.api.nvim_create_autocmd("User", {
            once = true,
            pattern = "AlphaReady",
            callback = function()
            require("lazy").show()
            end,
          })
          end

          require("alpha").setup(dashboard.opts)

         -- vim.api.nvim_create_autocmd("User", {
         --   once = true,
         --   pattern = "LazyVimStarted",
         --   callback = function()
         --   local stats = require("lazy").stats()
         --   local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
         --   dashboard.section.footer.val = "⚡ Neovim loaded "
         --   .. stats.loaded
         --   .. "/"
         --   .. stats.count
         --   .. " plugins in "
         --   .. ms
         --   .. "ms"
         --   pcall(vim.cmd.AlphaRedraw)
         --   end,
         -- })
         -- end,

         vim.api.nvim_create_autocmd("User", {
           once = true,
           pattern = "LazyVimStarted",
           callback = function()
           local stats = require("lazy").stats()
           local count = (math.floor(stats.startuptime * 100 + 0.5) / 100)
           local version = vim.version()
           local nvim_version_info = "  󰋼 v" .. version.major .. "." .. version.minor .. "." .. version.patch
           dashboard.section.footer.val = {
             "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. count .. " ms",
             "                      ",
             "             NeoVim " .. nvim_version_info,
           }
           pcall(vim.cmd.AlphaRedraw)
           end,
         })
         end,
  },

}
