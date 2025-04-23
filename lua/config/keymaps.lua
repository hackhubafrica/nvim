-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Save (Ctrl+S)
map({ "n", "i", "v" }, "<C-s>", "<Esc>:w<CR>", opts)

-- Quit (Ctrl+X)
map({ "n", "i", "v" }, "<C-x>", "<Esc>:q<CR>", opts)

-- Force Quit (Ctrl+Q)
map({ "n", "i", "v" }, "<C-q>", "<Esc>:q!<CR>", opts)

-- Write and Quit (Ctrl+W)
map({ "n", "i", "v" }, "<C-w>", "<Esc>:wq<CR>", opts)

vim.keymap.set("n", "<F12>", vim.lsp.buf.definition, { desc = "Go to Definition" })

map("n", "<C-_>", function()
  require("Comment.api").toggle.linewise.current()
end, opts)
map("v", "<C-_>", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)
