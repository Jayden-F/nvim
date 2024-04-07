return {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = {
        options = {
            icons_enabled = true,
            theme = 'material',
        }
    }
}
