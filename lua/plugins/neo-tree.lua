-- FILE EXPLORER FOR NEOVIM --

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>fo", ":Neotree toggle float filesystem reveal<CR>", {}) -- FILE TREE (FLOAT)
		vim.keymap.set("n", "<leader>gg", ":Neotree toggle float git_status<CR>", {}) -- FILE TREE (GIT STATUS)
		vim.keymap.set("n", "<leader>fl", ":Neotree toggle filesystem reveal left<CR>", {}) -- FILE TREE (LEFT)

		-- CHANGING DEFAULT ICONS FOR GIT STATUS --
		require("neo-tree").setup({
			default_component_configs = {
				git_status = {
					symbols = {
						-- Change type
						added = "✚", -- or "✚", but this is redundant info if you use git_status_colors on the name
						modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
						deleted = "✖", -- this can only be used in the git_status source
						renamed = "󰁕", -- this can only be used in the git_status source
						-- Status type
						untracked = "U",
						ignored = "",
						unstaged = "󰄱",
						staged = "",
						conflict = "",
					},
				},
			},
		})
	end,
}
