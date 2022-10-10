-- mappings.lua

-- Import & assign the map() function from the utils module
local map = require("utils").map

-- Nvim-tree
map("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
map("n", "<Leader>a", "<cmd> cclose<CR>")

-- Telescope
map("n", "ff", "<cmd>Telescope find_files<CR>")
map("n", "fg", "<cmd>Telescope live_grep<CR>")
map("n", "fb", "<cmd>Telescope.buffers<CR>")
map("n", "fh", "<cmd>Telescope.help_tags<CR>")

-- Buffer
map("n", "<leader>b", ":buffers<CR>:buffer<Space>")
map("n", "<tab>", "<cmd>bn<CR>")

