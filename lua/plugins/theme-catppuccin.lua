return {
    "catppuccin/nvim",
    name = "catppuccin",
    event = "VimEnter",
    priority = 1000,
    ---@class CatppuccinOptions
    opts = function()
        vim.cmd.colorscheme 'catppuccin'
        return {
            flavour = "mocha",
            transparent_background = true,
            color_overrides = {
                all = {
                    text = "#ffffff",
                },
            },
            custom_highlights = function(colors)
                return {
                    CurSearch = { bg = colors.yellow },
                    Diffchanged = { fg = colors.yellow },
                    DiffChanged = { fg = colors.yellow },
                }
            end,
            styles = {                   -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" }, -- Change the style of comments
                conditionals = { "italic" },
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
                -- miscs = {}, -- Uncomment to turn off hard-coded styles
            },
            default_integrations = true,
            integrations = {
                cmp = true,
                fidget = true,
                gitsigns = true,
                harpoon = true,
                lsp_trouble = true,
                mason = true,
                neotest = true,
                noice = true,
                notify = true,
                octo = true,
                telescope = {
                    enabled = true,
                },
                treesitter = true,
                treesitter_context = false,
                symbols_outline = true,
                illuminate = true,
                which_key = true,
                barbecue = {
                    dim_dirname = true,
                    bold_basename = true,
                    dim_context = false,
                    alt_background = false,
                },
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                    },
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                    },
                },
            },
        }
    end,
}
