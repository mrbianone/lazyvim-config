-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map("i", "jj", "<ESC>")
map("i", "<A-h>", "<Left>")
map("i", "<A-j>", "<Down>")
map("i", "<A-k>", "<Up>")
map("i", "<A-l>", "<Right>")
