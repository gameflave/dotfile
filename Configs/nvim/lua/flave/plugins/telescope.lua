return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
       },
    })

    telescope.load_extension("fzf")

    local builtin = require('telescope.builtin')
    -- set keymaps
    local km = vim.keymap

    km.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    km.set("n", "<leader>fg", builtin.git_files, { desc = "Fuzzy find files in cwd" })
    km.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    km.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos"})
  end,
}
