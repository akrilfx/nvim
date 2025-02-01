local function build_cmd()
    local cmd = nil
    -- Windows
    if vim.fn.has('win64') == 1 then
        cmd = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    end

    -- MacOSX
    if vim.fn.has('mac') == 1 then
        cmd = "make"
    end
    return cmd
end

return
{
    "yetone/avante.nvim",
    event = "VeryLazy",
    enabled = true,
    lazy = true,
    version = false, -- set this if you want to always pull the latest change
    opts = {
        provider = "copilot",
        copilot = {
            model = "claude-3.5-sonnet"
        },
        windows = {
            ---@type "right" | "left" | "top" | "bottom"
            position = "right", -- the position of the sidebar
            wrap = true,        -- similar to vim.o.wrap
            width = 20,         -- default % based on available width
        }
    },
    build = build_cmd(),
    dependencies = {
        "stevearc/dressing.nvim",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        --- The below dependencies are optional,
        "hrsh7th/nvim-cmp",              -- autocompletion for avante commands and mentions
        "nvim-tree/nvim-web-devicons",   -- or echasnovski/mini.icons
        "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
        "ibhagwan/fzf-lua",              -- for file_selector provider fzf
        -- "zbirenbaum/copilot.lua",        -- for providers='copilot'
        {
            -- support for image pasting
            "HakonHarnes/img-clip.nvim",
            event = "VeryLazy",
            opts = {
                -- recommended settings
                default = {
                    embed_image_as_base64 = false,
                    prompt_for_file_name = false,
                    drag_and_drop = {
                        insert_mode = true,
                    },
                    -- required for Windows users
                    use_absolute_path = true,
                },
            },
        },
        {
            -- Make sure to set this up properly if you have lazy=true
            'MeanderingProgrammer/render-markdown.nvim',
            opts = {
                file_types = { "markdown", "Avante" },
            },
            ft = { "markdown", "Avante" },
        },
    },
}
