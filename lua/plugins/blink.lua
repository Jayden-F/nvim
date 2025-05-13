return {
    'saghen/blink.cmp',
    event = "InsertEnter",
    dependencies = {
        { 'rafamadriz/friendly-snippets' },
        {
            'L3MON4D3/LuaSnip',
            build = "make install_jsregexp"
        },
    },
    version = "1.*",
    opts = {
        keymap = { preset = 'default' },
        completion = {
            accept = {
                auto_brackets = { enabled = false }
            },
            menu = {
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
            expand = function(snippet) require('luasnip').lsp_expand(snippet) end,
            active = function(filter)
                if filter and filter.direction then
                    return require('luasnip').jumpable(filter.direction)
                end
                return require('luasnip').in_snippet()
            end,
            jump = function(direction) require('luasnip').jump(direction) end,
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
    },
    opts_extend = { "sources.default" }
}

