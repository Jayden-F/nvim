return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        config = function()
            require("rose-pine").setup({
                styles = {
                    bold = true,
                    italic = true,
                    transparency = true,
                },
                highlight_groups = {
                    TreesitterContext = { bg = 'NONE' },
                    TreesitterContextLineNumber = { bg = 'NONE' },
                },
                groups = {
                    border = "muted",
                    panel = "none",
                },
            })
            vim.cmd.colorscheme("rose-pine-moon")
        end,
    }
}
