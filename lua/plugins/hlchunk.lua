return
{
    "shellRaining/hlchunk.nvim",
    enabled = true,
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        chunk = {
            enable = true
        },
        indent = {
            enable = true
        },
        blank = {
            enable = true
        }
    }
}
