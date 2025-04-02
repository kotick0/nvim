return {
	-------- Appearance
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},

	"goolord/alpha-nvim", -- Startup screen
	"nvim-lualine/lualine.nvim", -- Status line
	"nvim-tree/nvim-web-devicons", -- Developer icons package

	-------- Neovim tools
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8", -- Telescope
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{
		"nvim-treesitter/nvim-treesitter", -- Treesitter
		build = ":TSUpdate",
	},

	{
		"nvim-neo-tree/neo-tree.nvim", -- Neo-tree
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},
	},

	--------- LSP [Language Server Protocol] \mason\mason-lsp\lsp-config
	{
		"williamboman/mason.nvim",
	},
	{
		"williamboman/mason-lspconfig.nvim",
	},
	{
		"neovim/nvim-lspconfig",
	},

	-------- None-ls (Formatters Management)
	{
		"nvimtools/none-ls.nvim",
	},
  {
    "m4xshen/autoclose.nvim"
  },
}
