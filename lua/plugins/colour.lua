return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        config = function()
            require("rose-pine").setup({
                styles = {
                    bold = true,
                    italic = false,
                    transparency = true,
                },
                groups = {
                    border = "muted",
                    panel = "none",
                },
                highlight_groups = {
                    TreesitterContext = { bg = 'NONE' },
                    TreesitterContextLineNumber = { bg = 'NONE' },
                },
            })
            vim.cmd.colorscheme("rose-pine-moon")
        end,
    }
}
