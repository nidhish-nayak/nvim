-- TREE SITTER FOR SYNTAX HIGHLIGHTING --

return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")

         -- CONFIG --
			config.setup({
				-- AUTO INSTALL HIGHLIGHTS IF NEW LANGUAGE --
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
				autotag = {
					enable = true,
					enable_rename = true,
					enable_close = true,
					enable_close_on_slash = true,
					filetypes = { "html", "xml" },
				},
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
}
