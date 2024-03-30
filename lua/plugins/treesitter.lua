-- TREE SITTER FOR SYNTAX HIGHLIGHTING --

return {
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
		})
	end,
}
