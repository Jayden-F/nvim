return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "jay-babu/mason-nvim-dap.nvim",
        },
        keys = {
            { "<F5>",       function() require("dap").continue() end,                                             desc = "DAP: Continue" },
            { "<F6>",       function() require("dap").step_over() end,                                            desc = "DAP: Step Over" },
            { "<F7>",       function() require("dap").step_into() end,                                            desc = "DAP: Step Into" },
            { "<F8>",       function() require("dap").step_out() end,                                             desc = "DAP: Step Out" },
            { "<leader>b",  function() require("dap").toggle_breakpoint() end,                                    desc = "DAP: Toggle Breakpoint" },
            { "<leader>B",  function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end, desc = "DAP: Conditional Breakpoint" },
            { "<leader>du", function() require("dapui").toggle() end,                                             desc = "DAP UI: Toggle" },
        },
        config = function()
            local dap, dapui = require("dap"), require("dapui")
            dapui.setup()

            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end,
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        opts = {
            ensure_installed = { "debugpy", "codelldb" },
            automatic_installation = true,
            handlers = {
                -- Default handler for adapters
                function(config)
                    require("mason-nvim-dap").default_setup(config)
                end,
            },
        },
    }
}
