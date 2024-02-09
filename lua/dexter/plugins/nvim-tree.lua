return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup()
        local nvimTreeFocusOrToggle = function ()
     	    local nvimTree=require("nvim-tree.api")
        	local currentBuf = vim.api.nvim_get_current_buf()
     	    local currentBufFt = vim.api.nvim_get_option_value("filetype", { buf = currentBuf })
        	if currentBufFt == "NvimTree" then
    		    nvimTree.tree.toggle()
	        else
		       nvimTree.tree.focus()
    	    end
        end

        vim.keymap.set("n", "<leader>fe", nvimTreeFocusOrToggle)
    end,
}
