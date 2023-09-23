-- Leader key is "space"
vim.g.mapleader = " "

-- Open the project view 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move lines in visual mode with auto indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center vertical movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- idk lmao
vim.keymap.set("n", "Q", "<nop>")

-- tmux stuff
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
