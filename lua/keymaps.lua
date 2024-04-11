-- SET NUMBERS FOR NVIM LINES --
vim.wo.number = true
vim.wo.relativenumber = true

-- SET TAB & SHIFT WIDTH AS REQUIRED --
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- MAP LEADER --
vim.g.mapleader = " "

-- KEYMAPS --
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- folder tree
vim.keymap.set({ "n", "v" }, "<C-c>", '"+y')  -- yank motion
vim.keymap.set({ "n", "v" }, "<C-d>", '"+d')  -- delete motion
vim.keymap.set("n", "<C-v>", '"+p')           -- paste after cursor

-- GIT KEYMAPS --
-- UNDO GIT COMMIT --
vim.keymap.set("n", "<leader>grc", ":Git reset --soft HEAD~<CR>", {})
-- UNDO STAGE AND RESET FILE --
vim.keymap.set("n", "<leader>grs", [[:lua vim.cmd(':Git reset HEAD -- %') vim.cmd(':Git checkout -- %')<CR>]], {})

-- TMUX KEYMAPS --
vim.keymap.set("n", "<leader>tn", ":terminal tmux new-session %<CR>", {})
vim.keymap.set("n", "<leader>ta", ":terminal tmux a -t %<CR>", {})
vim.keymap.set("n", "<leader>td", ":terminal tmux kill-session -t %<CR>", {})
vim.keymap.set("n", "<leader>tda", ":terminal tmux kill-session -a<CR>", {})

-- HIGHLIGHT WHEN YANK --
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

