return {
    'nvim-tree/nvim-web-devicons',
    {
        "kylechui/nvim-surround",
        event = "BufReadPost",
        config = function()
            require("nvim-surround").setup({})
        end
    },
    { 'numToStr/Comment.nvim', opts = {}, event = "BufReadPost", },
    {
        "m4xshen/hardtime.nvim",
        event = "BufReadPost",
        dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
        opts = {}
    },
}
