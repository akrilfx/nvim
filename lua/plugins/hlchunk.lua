return {
    "shellRaining/hlchunk.nvim",
    lazy = true,
    enabled = true,
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        chunk = {
            enable = true,
            duration = 0,
            delay = 0,
            chars = {
                horizontal_line = "─",
                vertical_line = "│",
                left_top = "╭",
                left_bottom = "╰",
                right_arrow = ">",
            },
            style = "#806d9c",
            -- style = "#00ffff",
        },
        indent = {
            enable = true,
        },
        blank = {
            enable = true,
            chars = {
                ".",
            },
            -- style = {
            --     { bg = "#434437" },
            --     { bg = "#2f4440" },
            --     { bg = "#433054" },
            --     { bg = "#284251" },
            -- },
        },
    },
}
