-- TREE SITTER FOR SYNTAX HIGHLIGHTING --

return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
     config = function()
			local config = require("nvim-treesitter.configs")

         -- CONFIG --
			config.setup({
         ensure_installed = { "lua", "typescript", "javascript" },
				-- AUTO INSTALL HIGHLIGHTS IF NEW LANGUAGE --
				auto_install = true,
            auto_tag = { enable = true },
				highlight = { enable = true },
				indent = { enable = true },
         })
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
}
