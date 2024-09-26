return {
	"L3MON4D3/LuaSnip",
	event = "InsertEnter",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
	config = function()
		local luasnips = require("luasnip")
		local types = require("luasnip.util.types")

		luasnips.config.set_config({
			updateevents = "TextChanged,TextChangedI",
			enable_autosnippets = true,
		})
	end,
}
