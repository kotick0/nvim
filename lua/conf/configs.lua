-- CONFIGS FOR NEO-VIM PACKAGES

-- Alpha dashboard
require("alpha").setup(require("alpha.themes.startify").config)
require("alpha.themes.dashboard").section.footer.val = require("alpha.fortune")() -- Quotes

-- Theme (catppuccin - pink)
require("catppuccin").setup({
	integrations = {
		ts_rainbow = true,
	},
	color_overrides = {
		mocha = {
			text = "#F4CDE9",
			subtext1 = "#DEBAD4",
			subtext0 = "#C8A6BE",
			overlay2 = "#B293A8",
			overlay1 = "#9C7F92",
			overlay0 = "#866C7D",
			surface2 = "#705867",
			surface1 = "#5A4551",
			surface0 = "#44313B",

			base = "#352939",
			mantle = "#211924",
			crust = "#1a1016",
		},
	},
})
cmd.colorscheme("catppuccin")

-- Lualine status bar
require("lualine").setup({
	options = {
		theme = "catppuccin",
		component_separators = "/",
		section_separators = { left = "", right = "" },
	},
})

-- Treesitter
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"lua",
		"http",
		"html",
		"css",
		"bash",
		"cmake",
		"javascript",
		"markdown",
		"markdown_inline",
		"python",
		"vim",
		"vimdoc",
	},
	highlight = { enable = true },
	indent = { enable = true },
})

-- Mason lsp menago
require("mason").setup({})

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"pyright",
	},
})

-- LSP per lang. [nvim-lsp.config]

-- TODO: Set var (cuz lazy)
require("lspconfig").lua_ls.setup({})
require("lspconfig").pyright.setup({})

-- None-ls [Menago for formatters]
require("null-ls").setup({
	sources = {
		require("null-ls").builtins.formatting.stylua, -- Stylua (lua formatter)
	  require("null-ls").builtins.formatting.black,  -- Black (python formatter)
  },
})
-- Auto closing brackets
require("autoclose").setup()
