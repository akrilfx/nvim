local function place()
    local colPre = "C:"
    local col = "%c"
    local linePre = " L:"
    local line = "%l/%L"
    return string.format("%s%s%s%s", colPre, col, linePre, line)
end

local function win_number()
    return vim.api.nvim_win_get_number(0)
end

return
{
    'nvim-lualine/lualine.nvim',
    lazy = true,
    event = "VeryLazy",
    -- dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = function()
        require("lualine").setup()

        local opts = {
            options = {
                icons_enabled = true,
                theme = "auto",
                globalstatus = vim.o.laststatus == 3,
                disabled_filetypes = {},
            },
            --
            -- sections = {
            --     -- Left section
            --     lualine_a = { "mode" },
            --     lualine_b = { "branch" },
            --
            --     -- Right section
            --     lualine_x = { "fileformat", icons_enabled = true },
            --     lualine_y = {
            --         { "progress", separator = " ", padding = { left = 1, right = 0 } },
            --         { "location", padding = { left = 0, right = 1 } },
            --     },
            --     lualine_z = {
            --         { place, padding = { left = 1, right = 1 } },
            --     },
            -- },

            inactive_sections = {
                -- Left section
                lualine_a = { { win_number, color = { fg = "#26ffbb", bg = "#282828" } } },
            },

            extensions = {
                "fzf",
                "neo-tree",
                "lazy"
            },
        }
        return opts
    end
}
