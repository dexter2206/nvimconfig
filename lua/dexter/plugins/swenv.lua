return {
    "AckslD/swenv.nvim",
    config = function()
        require("swenv").setup({
            venvs_path = vim.fn.expand("~/.pyenv/versions/")
        })
    end,
    keys = {
        {
            "<Leader>vn",
            function() require("swenv.api").pick_venv() end,
            desc = "Pick virtualenv"
        }
    }
}
