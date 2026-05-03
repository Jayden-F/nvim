return {
    "ThePrimeagen/99",
    opts = {
        completion = { source = "blink", }
    },
    keys = {
        {
            "<leader>9v",
            function()
                require("99").visual()
            end,
            mode = "v",
            desc = "99 Visual",
        },
        {
            "<leader>9x",
            function()
                require("99").stop_all_requests()
            end,
            mode = "n",
            desc = "99 Stop Requests",
        },
        {
            "<leader>9s",
            function()
                require("99").search()
            end,
            mode = "n",
            desc = "99 Search",
        },
    }
}
