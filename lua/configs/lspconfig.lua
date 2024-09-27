local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities
-- local util = require("lspconfig/util")

local lspconfig = require("lspconfig")
local servers = {
	"emmet_language_server",
	"tsserver",
	"html",
	"cssls",
	"tailwindcss",
	"eslint",
	"jsonls",
	"cssls",
	"cssmodules_ls",
	"bashls",
	"prismals",
	-- "rust_analyzer",
	"clangd",
	"neocmake",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_init = on_init,
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

-- vim.g.rustaceanvim = {
-- 	server = {
-- 		on_attach = function(client, bufnr)
--             vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufnr)
--             vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufnr)
-- 		end,
-- 	},
-- }

-- lspconfig.rust_analyzer.setup({
-- 	filetypes = { "rust" },
-- 	root_dir = util.root_pattern("Cargo.toml"),
-- 	settings = {
-- 		["rust_analyzer"] = {
-- 			cargo = {
-- 				allFeatures = true,
-- 			},
-- 		},
-- 	},
-- })
