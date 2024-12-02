-- Main map leader
vim.g.mapleader = ","

-- Change focus on Window
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus on Left Window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus on Bottom Window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus on Top Window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus on Right Window" })

