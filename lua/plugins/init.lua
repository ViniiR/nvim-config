return {
	{
		"stevearc/conform.nvim",
		config = function()
			require("configs.conform")
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			git = { enable = true },
		},
	},
	-- In order to modify the `lspconfig` configuration:
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},

	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},

	{
		"nvim-telescope/telescope.nvim",
		opts = {
			defaults = {
				mappings = {
					i = {
						["<C-H>"] = function()
							vim.api.nvim_input("<C-W>")
						end,
						["<Tab>"] = function()
							vim.api.nvim_input("<C-n>")
						end,
						["<S-Tab>"] = function()
							vim.api.nvim_input("<C-p>")
						end,
					},
				},
			},
		},
	},

    {
        "rust-lang/rust.vim",
        ft = 'rust',
        init = function ()
            vim.g.rustfmt_autosave = 1
        end
    },

    {
        "simrat39/rust-tools.nvim",
        ft = "rust",
        opts = function ()
            return require("configs.rust-tools")
        end,
        config = function (_, opts)
            require("rust-tools").setup(opts)
        end
    }
}
