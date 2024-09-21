return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("harpoon"):setup()
    end,
    keys = {
        { "<leader><leader>", function() require("harpoon"):list():add() end,                                    desc = "harpoon file", },
        { "<leader>h",        function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, desc = "harpoon quick menu", mode = "n" },
        { "<M-1>",            function() require("harpoon"):list():select(1) end,                                desc = "harpoon to file 1",  mode = "n" },
        { "<M-2>",            function() require("harpoon"):list():select(2) end,                                desc = "harpoon to file 2",  mode = "n" },
        { "<M-3>",            function() require("harpoon"):list():select(3) end,                                desc = "harpoon to file 3",  mode = "n" },
        { "<M-4>",            function() require("harpoon"):list():select(4) end,                                desc = "harpoon to file 4",  mode = "n" },
    },
}
