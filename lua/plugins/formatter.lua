return {
    {
        'stevearc/conform.nvim',
        event = { "BufReadPre", "BufNewFile" },
        keys = {
            {
                -- Customize or remove this keymap to your liking
                "<leader>cf",
                function()
                    require("conform").format({ lsp_fallback = true, async = true })
                end,
                mode = "",
                desc = "Code Format (buffer)",
            },
        },
        -- This will provide type hinting with LuaLS
        ---@module "conform"
        ---@type conform.setupOpts
        opts = {
            -- Define your formatters
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "ruff_format", "ruff_fix", "black" },
            },
            -- Set default options
            default_format_opts = {
                lsp_format = "fallback",
            },
            -- Set up format-on-save
            format_on_save = { timeout_ms = 500 },
            -- Customize formatters
            formatters = {
                shfmt = {
                    prepend_args = { "-i", "2" },
                },
            },
        },
        -- config = function()
        --     https://github.com/stevearc/conform.nvim/blob/master/doc/recipes.md
        --     vim.api.nvim_create_user_command("Format", function(args)
        --         local range = nil
        --         if args.count ~= -1 then
        --             local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
        --             range = {
        --                 start = { args.line1, 0 },
        --                 ["end"] = { args.line2, end_line:len() },
        --             }
        --         end
        --
        --         conform.format({ async = true, lsp_fallback = true, range = range })
        --     end, { range = true })
        -- end,
    },
}
