local harpoon = require("harpoon")
return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        harpoon:setup()
    end,
    keys = {
        { "<leader>a", function() harpoon:list():add() end,     desc = "harpoon file", },
        {
            "<C-e>",
            function()
                local harpoon = harpoon
                harpoon.ui:toggle_quick_menu(harpoon:list())
            end,
            desc = "harpoon quick menu",
        },
        { "<C-h>",     function() harpoon:list():select(1) end, desc = "harpoon to file 1", },
        { "<C-j>",     function() harpoon:list():select(2) end, desc = "harpoon to file 2", },
        { "<C-k>",     function() harpoon:list():select(3) end, desc = "harpoon to file 3", },
        { "<C-l>",     function() harpoon:list():select(4) end, desc = "harpoon to file 4", },
        { "<C-;>",     function() harpoon:list():select(5) end, desc = "harpoon to file 5", },
    },
}
