return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		-- import nvim-treesitter plugin
		local treesitter = require("nvim-treesitter.configs")

		-- configure treesitter
		treesitter.setup({ -- enable syntax highlighting
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = {
				enable = true,
			},
			-- ensure these language parsers are installed
			ensure_installed = {
				"c",
				"cpp",
        "bash",
        "lua",
        "vim",
				"odin",
				"glsl",

				"markdown",
				"markdown_inline",
				"dockerfile",
        "vimdoc",
        "yaml",
        "ini",
        "hyprlang",

				"gitignore",
				"gitattributes",
				"gitcommit",

				"cmake",
				"make",
				"meson",

				"json",
				"javascript",
				"typescript",
				"html",
				"css",
				"svelte",
				"c_sharp",
				"go",
				"python",
				"zig",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
