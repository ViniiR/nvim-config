local M = {}

M.ui = {
	theme = "onedark",
	-- transparency = true,
	statusline = {
		theme = "vscode_colored",
		-- minimal, default, vscode, _colored
	},
    telescope = {
        style = 'bordered'
    },
	nvdash = {
		load_on_startup = true,
		-- header = {
		-- 	"           ▄ ▄                   ",
		-- 	"       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
		-- 	"       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
		-- 	"    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
		-- 	"  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
		-- 	"  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
		-- 	"▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
		-- 	"█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
		-- 	"    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
		-- },
		header = {
			"                                                                       ",
			"                                                                     ",
			"       ████ ██████           █████      ██                     ",
			"      ███████████             █████                             ",
			"      █████████ ███████████████████ ███   ███████████   ",
			"     █████████  ███    █████████████ █████ ██████████████   ",
			"    █████████ ██████████ █████████ █████ █████ ████ █████   ",
			"  ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
			" ██████  █████████████████████ ████ █████ █████ ████ ██████ ",
			"                                                                       ",
		},

		buttons = {
			{ "  Find File", "<Space> f f", "Telescope find_files" },
			{ "󰈚  Recent Files", "<Space> f o", "Telescope oldfiles" },
			{ "󰈭  Find Word", "<Space> f w", "Telescope live_grep" },
			{ "  Bookmarks", "<Space> m a", "Telescope marks" },
			{ "  Themes", "<Space> t h", "Telescope themes" },
			{ "  Mappings", "<Space> c h", "NvCheatsheet" },
		},
	},
	hl_override = {
		["@punctuation.delimiter"] = { fg = "white" },
		["@property"] = { link = "CustomVVariable" },
		["Label"] = { link = "CustomVVariable" },
		["@punctuation.bracket"] = { link = "CustomVPurple" },
		["Delimiter"] = { link = "CustomVPurple" },
		["Boolean"] = { link = "CustomVBool" },
		["@constant.builtin"] = { link = "CustomVBool" },
		["@constant"] = { link = "CustomVBool" },
		["Type"] = { link = "CustomVType" },
		["Function"] = { link = "CustomVFunction" },
		["@function"] = { link = "CustomVFunction" },
		["@function.call"] = { link = "CustomVFunction" },
		["@function.builtin"] = { link = "CustomVFunction" },
		["@variable"] = { link = "CustomVVariable" },
		["@variable.member"] = { link = "CustomVProperty" },
		-- ["@spell"] = { guifg = "cyan" },
	},
}

return M
