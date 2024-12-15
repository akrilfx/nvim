-- keymaps
local opts = { noremap = true, silent = true }

-- Main map leader
vim.g.mapleader = ","

-- Save
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>", { desc = "Save current file" })

-- Close buffer
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<cr>", { desc = "Buffer close" })

-- Select All
vim.keymap.set("n", "<leader>A", "ggVG<c-$>", { desc = "Select All" })

-- Lazy
vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Lazy Window" })
vim.keymap.set("n", "<leader>lu", "<cmd>Lazy update<cr>", { desc = "Lazy update" })

-- Change focus on Window
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus on Left Window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus on Bottom Window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus on Top Window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus on Right Window" })


-- Move focus to windows
vim.keymap.set("n", "<leader>1", "1<C-W>w", { desc = "Move to Window 1" })
vim.keymap.set("n", "<leader>2", "2<C-W>w", { desc = "Move to Window 2" })
vim.keymap.set("n", "<leader>3", "3<C-W>w", { desc = "Move to Window 3" })
vim.keymap.set("n", "<leader>4", "4<C-W>w", { desc = "Move to Window 4" })

-- Quit all
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })
vim.keymap.set("n", "<C-q>", "<cmd>qa<cr>", { desc = "Quit All" })

-- Tab and Shift Tab
-- vim.keymap.set("n",    "<Tab>",         ">>",  opts)
-- vim.keymap.set("n",    "<S-Tab>",       "<<",  opts)
-- vim.keymap.set("v",    "<Tab>",         ">gv", opts)
-- vim.keymap.set("v",    "<S-Tab>",       "<gv", opts)
