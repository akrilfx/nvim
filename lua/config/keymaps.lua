-- Main map leader
vim.g.mapleader = ","

-- Change focus on Window
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus on Left Window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus on Bottom Window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus on Top Window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus on Right Window" })


-- From Ben Frain
-- Easier window switching with leader + Number
-- Creates mappings like this: km.set("n", "<Leader>2", "2<C-W>w", { desc = "Move to Window 2" })
-- for i = 1, 4 do
--  local lhs = "<Leader>" .. i
--  local rhs = i .. "<C-W>w"
--  vim.keymap.set("n", lhs, rhs, { desc = "Move to Window " .. i })
-- end

vim.keymap.set("n", "1", "1<C-W>w", { desc = "Move to Window 1" })
vim.keymap.set("n", "2", "2<C-W>w", { desc = "Move to Window 2" })
vim.keymap.set("n", "3", "3<C-W>w", { desc = "Move to Window 3" })
vim.keymap.set("n", "4", "4<C-W>w", { desc = "Move to Window 4" })
