return {
  'stevearc/aerial.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  },
  config = function()
      require("aerial").setup({manage_folds=true})
      vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
  end
}
