return
{
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    keys = { -- Example mapping to toggle outline
        { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    opts = {
        outline_window = {
            -- Where to open the split window: right/left
            position = 'right',
            show_numbers = false,
            shoe_relative_numbers = false,
        }
    },
}
