vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- ============================
--  Basic Neovim Settings
-- ============================
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true

-- ============================
--  Keymaps
-- ============================
vim.keymap.set("n", "<leader>e", ":Ex<CR>")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<leader>r", ":w<CR>:!python3 %<CR>")


-- ============================
--  Bootstrap lazy.nvim
-- ============================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ============================
--  Load Plugins
-- ============================
require("lazy").setup("plugins")
