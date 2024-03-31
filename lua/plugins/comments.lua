-- EASY COMMENTS PLUGIN --

return {
	"numToStr/Comment.nvim",
	opts = {
		-- add any options here
	},
	lazy = false,
	config = function()
		require("Comment").setup({
			-- KEYMAPS --
			opleader = {
				---Line-comment keymap
				line = "cc",
				---Block-comment keymap
				block = "cb",
			},
		})
	end,
}
