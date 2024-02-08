return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter' },
    config = function()
        local telescope = require("telescope")
        telescope.load_extension("file_browser")
        telescope.setup({
            extensions = {
                hijack_netrw = true
            },
            pickers = {
                colorscheme = {
                    enable_preview = true
                }
            }
        })
    end,
    keys = {
        {
            "<Leader>ff",
            "<cmd>Telescope find_files<CR>",
            desc = "Find files",
        },
        {
            "<Leader>bb",
            "<cmd>Telescope buffers<CR>",
            desc = "Switch buffer",
        },
        {
            "<Leader>fb",
            "<cmd>Telescope file_browser<CR>",
            desc = "File browser"
        }
    }
}
