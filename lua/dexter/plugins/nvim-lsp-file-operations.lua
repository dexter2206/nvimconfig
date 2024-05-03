return {
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-tree.lua",
    },
    lazy = false,
    config = function()
      require("lsp-file-operations").setup({debug=true})
    end,
  },
}
