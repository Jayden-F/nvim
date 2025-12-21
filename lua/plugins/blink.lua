return {
    'saghen/blink.cmp',
    build = 'nix run .#build-plugin',
    event = "InsertEnter",
    dependencies = {
        {
            'L3MON4D3/LuaSnip',
            dependencies = { "rafamadriz/friendly-snippets" },
            build = "make install_jsregexp",
            config = function()
                require("luasnip").filetype_extend("python", { "pydoc" })
                require("luasnip.loaders.from_vscode").lazy_load()
            end,
        },
    },
    opts = {
        keymap = { preset = 'default' },
        completion = {
            accept = {
                auto_brackets = {
                    enabled = false,
                }
            },
            menu = {
                auto_show_delay_ms = 500,
                draw = {
                    treesitter = { 'lsp' },
                    columns = { { "label", "label_description", gap = 1 }, { "kind_icon", gap = 1, "kind" } },
                },
            },
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 0,
            },
        },
        fuzzy = {
            sorts = {
                'exact',
                'score',
                'sort_text',
            },
        },
        snippets = {
            preset = 'luasnip',
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
    },
    opts_extend = { "sources.default" }
}
