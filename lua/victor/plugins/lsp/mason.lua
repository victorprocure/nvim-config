return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
				"omnisharp",
				"clangd",
				"bashls",
				"dockerls",
				"gopls",
				"jsonls",
				"remark_ls",
				"powershell_es",
				"sqlls",
				"rust_analyzer",
				"somesass_ls",
				"lemminx",
				"yamlls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"csharpier",
				"sql-formatter",
				"stylua",
				"isort",
				"black",
				"sqlfluff",
				"sonarlint-language-server",
			},
		})
	end,
}
