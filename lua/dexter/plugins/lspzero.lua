return {
    'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
    dependencies = {
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {'L3MON4D3/LuaSnip'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'}
    },
    config = function()
        local lsp_zero = require("lsp-zero")

        lsp_zero.on_attach(function(client, bufnr)
            lsp_zero.default_keymaps({buffer = bufnr, preserve_mappings=false})
        end)
        vim.lsp.set_log_level("debug")
        require("mason").setup({})
        require("mason-lspconfig").setup({
            ensure_installed = {
                "pyright",
                "rust_analyzer",
                "ltex",
                "clangd",
                "elixirls",
                "yamlls"
            },
            handlers = {
                lsp_zero.default_setup,
                ltex = function()
                    require("lspconfig").ltex.setup({ filetypes = {"markdown", "text", "latex"}})
                end
            }
        })
    end
}
