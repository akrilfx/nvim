-- mappings.lua

-- Import & assign the map() function from the utils module
local map = require("utils").map

map("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
map("n", "<Leader>a", "<cmd> cclose<CR>")

