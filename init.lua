-- Variables
opt = vim.opt
g = vim.g
kmap = vim.keymap
cmd = vim.cmd

-- Leader key
g.mapleader = " "

-- Imports
require("conf.lazy") -- Lazy.nvim plugin manager
require("conf.plugins") -- Plugins for lazy.nvim
require("conf.configs") -- Stores main plugins config files
require("conf.mappings") -- Keyboard mappings
require("conf.settings") -- Neovim settings
