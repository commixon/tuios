-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map jj to <esc>
vim.keymap.set("i", "jj", "<esc>")

-- Save with Ctl-W
vim.keymap.set("n", "<C-W>", "<Cmd>w<CR><Esc>")

-- Quit with Ctl-Q
vim.keymap.set("n", "<C-Q>", "<cmd>q<cr>", { silent = false })
