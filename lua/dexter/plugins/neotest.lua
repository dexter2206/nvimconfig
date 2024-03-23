return { 
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/nvim-nio"
  },
  config = function()
      local neotest = require("neotest")
      neotest.setup({
        highlights = {
            dir = "Directory",
            passed = "String",
            adapter_name = "String",
            failed = "@variable.builtin",
            file = "@constructor",
            test = "@variable"
        },
        adapters = {
            require("neotest-python")({
                runner = "pytest",
                args = {"-vv"},
                pytest_discover_instances = true,
                python = function()
                    return require("venv-selector").get_active_path()
                end
            })
        },
        summary = {
            open = "botright vsplit | vertical resize 100",
            mappings = {
                run = "r",
                mark = "<TAB>",
                run_marked = "R",
                stop = "x"
            }
        }
    })
    vim.keymap.set(
      "n",
      "<leader>ts",
      neotest.summary.toggle
    )
    vim.keymap.set("n", "<leader>to", function()
				require("neotest").output.open({ enter = true, auto_close = true })
			end)
    vim.api.nvim_set_hl(0, "NeotestPassed", { fg = vim.api.nvim_get_hl(0, { name = "String" }).fg })
end
}
