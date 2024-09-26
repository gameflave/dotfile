vim.g.mapleader = " "

local km = vim.keymap

km.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move selected line up"})
km.set("v", "K", ":m '>-2<CR>gv=gv", {desc = "Move selected line down"})

-- keep cursor centered
km.set("n", "<C-d>", "<C-d>zz")
km.set("n", "<C-u>", "<C-u>zz")
km.set("n", "n", "nzzzv")
km.set("n", "N", "Nzzzv")

-- to void register and paste
km.set("x", "<leader>p", "\"_dp", {desc = "Selection to void register and paste"})

-- delete to void register
km.set("n", "<leader>d", "\"_d", {desc = "Delete to void register"})
km.set("v", "<leader>d", "\"_d", {desc = "Delete to void register"})

-- disable Q
km.set("n", "Q", "<nop>")

km.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", {desc = "Replace current word in file"})

-- build cmake project
km.set('n', '<leader>b', function()
	local current_dir = vim.fn.getcwd()
	-- This command assumes your project root contains a .git directory
	local handle = io.popen("git rev-parse --show-toplevel")
	local project_root = handle:read("*a"):gsub("\n", "")
	handle:close()

	if project_root == '' then
		print("Error: Project root not found.")
		return
	end

	local build_dir = project_root .. "/build"
	os.execute("mkdir -p " .. build_dir)
	os.execute("cd " .. build_dir .. " && cmake " .. project_root .. "> build_output.txt && make > build_output.txt")
	os.execute("$(find " .. project_root .."/bin -type f -executable | head -n 1)")
	vim.api.nvim_set_current_dir(current_dir)
end, {noremap = true, silent = true})

km.set('n', '<leader>w', ':w<CR>', { desc = "Save current buffer"});
km.set('n', '<leader>q', ':q<CR>', { desc = "Quit current buffer"});

-- window management
km.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
km.set("n", "<leader>sh", "<C-w>h", { desc = "Split window horizontally" })
km.set("n", "<C-Left>", "<C-w>h", { desc = "Move to left window" })
km.set("n", "<C-Right>", "<C-w>l", { desc = "Move to right window" })
km.set("n", "<C-Up>", "<C-w>k", { desc = "Move to up window" })
km.set("n", "<C-Down>", "<C-w>j", { desc = "Move to down window" })

km.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Back to normal mode from terminal mode" })

km.set("n", "ee", ":Ex<CR>", { desc = "Open netrw"})
