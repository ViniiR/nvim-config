local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

return {
	server = {
		on_attach = on_attach,
		capabilities = capabilities,
		on_init = on_init,
	},
}
