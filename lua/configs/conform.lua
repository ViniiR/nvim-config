local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = {
			"stylua",
		},
		javascript = {
			"prettierd",
		},
		typescript = {
			"prettierd",
		},
		javascriptreact = {
			"prettierd",
		},
		typescriptreact = {
			"prettierd",
		},
		json = {
			"prettierd",
		},
		cpp = {
			"clang_format",
		},
		c = {
			"clang_format",
		},
		jsonc = {
			"prettierd",
		},
		css = {
			"prettierd",
		},
		scss = {
			"prettierd",
		},
		sass = {
			"prettierd",
		},
	},

	ft_parsers = {
		javascript = "babel",
		javascriptreact = "babel",
		typescript = "typescript",
		typescriptreact = "typescript",
		c = "clang_format",
		cpp = "clang_format",
		vue = "vue",
		-- rust = "rust",
		css = "css",
		scss = "scss",
		--     less = "less",
		html = "html",
		json = "json",
		jsonc = "json",
		yaml = "yaml",
		markdown = "markdown",
		--     ["markdown.mdx"] = "mdx",
		--     graphql = "graphql",
		--     handlebars = "glimmer",
	},
}

require("conform").setup(options)
