local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")
local servers = {
	"emmet_language_server",
	"tsserver",
	"html",
	"tailwindcss",
	"eslint",
	"jsonls",
	"cssls",
	"cssmodules_ls",
	"bashls",
	"prismals",
	"rust_analyzer",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_init = on_init,
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

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
