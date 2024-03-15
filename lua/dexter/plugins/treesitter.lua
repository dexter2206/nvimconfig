return { 
    'nvim-treesitter/nvim-treesitter',
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = "all",
            highlight = {enable = true},
            textobjects = {
                move = {
                    enable = true,
                    set_jumps = true,

                    goto_previous_start = {
                        ["[p"] = "@parameter.inner",
                        ["[f"] = "@function.outer",
                        ["[k"] = "@class.outer",
                        ["[i"] = "@call.outer",
                    },
                    goto_previous_end = {
                        ["[P"] = "@parameter.outer",
                        ["[F"] = "@function.outer",
                        ["[K"] = "@class.outer",
                        ["[I"] = "@call.outer",
                    },
                    goto_next_start = {
                        ["]p"] = "@parameter.inner",
                        ["]f"] = "@function.outer",
                        ["]k"] = "@class.outer",
                        ["]i"] = "@call.outer",
                    },
                    goto_next_end = {
                        ["]P"] = "@parameter.outer",
                        ["]F"] = "@function.outer",
                        ["]K"] = "@class.outer",
                        ["]I"] = "@call.outer",
                    },
                },

                select = {
                    enable = true,

                    -- Automatically jump forward to textobj, similar to targets.vim
                    lookahead = true,

                    keymaps = {
                        -- You can use the capture groups defined in textobjects.scm
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",
                        ["ai"] = "@call.outer",
                        ["ii"] = "@call.inner",
                        ["ak"] = "@class.outer",
                        ["ik"] = "@class.inner",
                        ["ap"] = "@parameter.outer",
                        ["ip"] = "@parameter.inner",
                    },
                },
            },
    })
    end
}

