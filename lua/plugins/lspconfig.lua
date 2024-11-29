return {
	{
		"williamboman/mason.nvim",

		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			auto_install = true,
		},
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({
				capabilities = capabilities,

				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})

			lspconfig.prismals.setup({
				capabilities = capabilities,
				filetypes = { "prisma" }, -- Certifica que só arquivos .prisma serão lidos
				root_dir = function(fname)
					return require("lspconfig").util.find_git_ancestor(fname) or vim.fn.getcwd()
				end,
			})
		end,
	},
}
