return {
    'nvim-lualine/lualine.nvim',
    event = "UIEnter",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            icons_enabled = true,
            theme = 'material',
        }
    }
}
