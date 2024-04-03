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

}
