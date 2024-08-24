return {
    {
        "williamboman/mason.nvim",
        config = function()
            require('mason').setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "clangd", "emmet_ls", "graphql", "html", "jsonls", "tsserver", "markdown_oxide", "intelephense", "lemminx",
                "yamlls"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({capabilities = capabilities})
            lspconfig.clangd.setup({capabilities = capabilities})
            lspconfig.emmet_ls.setup({capabilities = capabilities})
            lspconfig.graphql.setup({capabilities = capabilities})
            lspconfig.html.setup({capabilities = capabilities})
            lspconfig.jsonls.setup({capabilities = capabilities})
            lspconfig.tsserver.setup({capabilities = capabilities})
            lspconfig.markdown_oxide.setup({capabilities = capabilities})
            lspconfig.intelephense.setup({capabilities = capabilities})
            lspconfig.lemminx.setup({capabilities = capabilities})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
