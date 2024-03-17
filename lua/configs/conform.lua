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
            "prettierd"
        },
        jsonc = {
            "prettierd"
        },
	},
	ft_parsers = {
		javascript = "babel",
		javascriptreact = "babel",
		typescript = "typescript",
		typescriptreact = "typescript",
		--     vue = "vue",
		css = "css",
		scss = "scss",
		--     less = "less",
		html = "html",
		json = "json",
		--     jsonc = "json",
		--     yaml = "yaml",
		--     markdown = "markdown",
		--     ["markdown.mdx"] = "mdx",
		--     graphql = "graphql",
		--     handlebars = "glimmer",
	},
}

require("conform").setup(options)
