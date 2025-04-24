return {
    {
        'williamboman/mason.nvim',
        lazy = false,
        opts = {},
    },
    -- Autocompletion
    {
        'saghen/blink.cmp',
        dependencies = {
            { 'rafamadriz/friendly-snippets' },
            {
                'L3MON4D3/LuaSnip',
                build = "make install_jsregexp"
            },
        },
        build = 'cargo build --release',
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
    },

    -- LSP
    {
        'neovim/nvim-lspconfig',
        cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            { 'saghen/blink.cmp' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
        },
        init = function()
            -- Reserve a space in the gutter
            -- This will avoid an annoying layout shift in the screen
            vim.opt.signcolumn = 'yes'
        end,

        config = function()
            -- LspAttach is where you enable features that only work
            -- if there is a language server active in the file
            vim.api.nvim_create_autocmd('LspAttach', {
                desc = 'LSP actions',
                callback = function(event)
                    local opts = { buffer = event.buf }
                    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
                    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
                    vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
                    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
                    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
                    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
                    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
                    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
                    vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, opts)
                end,
            })

            require('mason-lspconfig').setup({
                ensure_installed = {},
                handlers = {
                    -- this first function is the "default handler"
                    -- it applies to every language server without a "custom handler"
                    function(server_name)
                        local config = {}
                        local lspconfig = require('lspconfig')
                        config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
                        lspconfig[server_name].setup(config)
                        if vim.lsp.inlay_hint then
                            vim.lsp.inlay_hint.enable(true)
                        end
                    end,
                }
            })
        end
    }
}
