return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim", },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({})

		local km = vim.keymap

		km.set("n", "<leader><Tab>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open Harpoon window" })
		km.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add current buffers to Harpoon" })

		km.set("n", "<leader>t", function() harpoon:list():select(1) end, { desc = "Select first buffer in Harpoon list" })
		km.set("n", "<leader>s", function() harpoon:list():select(2) end, { desc = "Select second buffer in Harpoon list" })
		km.set("n", "<leader>r", function() harpoon:list():select(3) end, { desc = "Select third buffer in Harpoon list" })
		km.set("n", "<leader>n", function() harpoon:list():select(4) end, { desc = "Select fourth buffer in Harpoon list" })
		km.set("n", "<leader>d", function() harpoon:list():prev() end, { desc = "Select fourth buffer in Harpoon list" })
		km.set("n", "<leader>'", function() harpoon:list():next() end, { desc = "Select fourth buffer in Harpoon list" })
  end
}
