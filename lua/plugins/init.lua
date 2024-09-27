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
				file_ignore_patterns = { "node_modules", ".git/", "target" },
			},
		},
	},
	{
		"mrcjkb/rustaceanvim",
		version = "^5", -- Recommended
		lazy = false, -- This plugin is already lazy
		dependencies = "neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("nvchad.configs.lspconfig")
			vim.g.rustaceanvim = {
				--TODO: fix this shit, fsr autoformat broke
				server = {
					on_attach = lspconfig.on_attach,
					default_settings = {
						["rust-analyzer"] = {
							capabilities = lspconfig.capabilities,
							cargo = {
								allFeatures = true,
							},
							-- checkOnSave = true,
							-- check = {
							-- 	enable = true,
							-- 	command = "check",
							-- },
						},
					},
				},
			}
		end,
		ft = { "rust" },
	},

    -- this plugin is actually used ok
    -- dont remove it again, dumbshit
	{
		"rust-lang/rust.vim",
		ft = "rust",
		init = function()
			vim.g.rustfmt_autosave = 1
		end,
	},
	--
	-- {
	-- 	"simrat39/rust-tools.nvim",
	-- 	ft = "rust",
	-- 	opts = function()
	-- 		return require("configs.rust-tools")
	-- 	end,
	-- 	config = function(_, opts)
	-- 		require("rust-tools").setup(opts)
	-- 	end,
	-- },
}
