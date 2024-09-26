return {
	"nvim-tree/nvim-web-devicons",
	config = function()
        require("nvim-web-devicons").setup {
            strict = true,
            override_by_extension = {
                ["vert"] = {
                    icon = "󰕣",
                    color = "#9F52F4",
                    cterm_color = "63",
                    name = "VertexShader"
                },
                ["frag"] = {
                    icon = "",
                    color = "#F45257",
                    cterm_color = "161",
                    name = "FragmentShader"
                }

            }
        }
    end,
}
