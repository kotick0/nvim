-- KEYBOARD MAPPING

-- Neovim tools
local builtin = require("telescope.builtin") -- Telescope import

-- Binds
kmap.set("n", "<C-s>", builtin.find_files, {}) -- Fuzzy finder
kmap.set("n", "<leader>g", builtin.live_grep, {}) -- Live Grep
kmap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {}) -- Neo-tree
kmap.set("n", "<leader>f", vim.lsp.buf.format, {}) -- Formatter keybind / Press to format
