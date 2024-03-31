-- AUTOCLOSE BRACKETS AND QUOTES --

return {
	"m4xshen/autoclose.nvim",
	config = function()
		require("autoclose").setup({
			options = {
				disabled_filetypes = { "text", "markdown" },
			},
		})
	end,
}
