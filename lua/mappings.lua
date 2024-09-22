require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set
local nomap = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "File Format with conform" })
map("n", "<leader>tr", ":NvimTreeRefresh<CR>", { noremap = true, desc = "Nvim Tree Refresh" })

map("v", "<C-c>", "<ESC>", {noremap = true, silent = true})

-- map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
map("i", "<C-H>", "<C-W>")
-- map("i", "j", "jj", { noremap = true, silent = true })
-- map("n", "<C-v>", "<C-v>", { noremap = true })

nomap("n", "<C-c>")

-- must do ctrl l to enter nterminal then ctrl h to move window, else ctrl backspace would not work
vim.api.nvim_exec(
	[[
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
]],
	false
)

map("x", '"', "_x", { noremap = true })
