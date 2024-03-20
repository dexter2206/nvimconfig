return {
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  opts = {toggle_key="<C-;>"},
  config = function(_, opts) require('lsp_signature').setup({toggle_key="<C-;>"}) end
}
