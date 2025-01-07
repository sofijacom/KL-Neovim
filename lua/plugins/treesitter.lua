return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "c", "lua", "cpp", "java", "javascript", "vim", "vimdoc", "query", "markdown", "markdown_inline"  },
			auto_install = { enable = false },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
