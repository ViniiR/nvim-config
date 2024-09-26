local M = {}

M.ui = {
	theme = "onedark",
	-- transparency = true,
	float = {
		border = "rounded",
	},
	tabufline = {
		-- add useful stuff at th end instead of buttons
		order = { "treeOffset", "buffers", "tabs" },
		-- original
		-- order = { "treeOffset", "buffers", "tabs", "btns" },
	},
	statusline = {
		theme = "vscode_colored",
		-- minimal, default, vscode, _colored
		-- order = {
		-- 	"mode",
		-- 	"file",
		-- 	"git",
		-- 	"%=",
		-- 	"lsp_msg",
		-- 	"%=",
		-- 	"diagnostics",
		-- 	"%=",
		-- 	"lsp",
		-- 	"operatingSystem",
		-- 	"lineFeed",
		-- 	"cursor",
		-- 	"cwd",
		-- },
		order = {
			"mode",
			"file",
			"diagnostics",
			"git",
			"%=",
			"lsp_msg",
			"%=",
			"operatingSystem",
			"lineFeed",
			"lsp",
			-- "fileEncoding",
			"tabLength",
			"cursor",
			"cwd",
		},
		separator_style = "dash",
		modules = {
			operatingSystem = function()
				local bluehighlight = "%#CustomVBool#"
				local linux = bluehighlight .. "󰣇 "
				local windows = " "
				local mac = " "
				local osName = vim.loop.os_uname()
				if string.len(osName.sysname) == 0 then
					return ""
				end
				if osName.sysname == "Linux" then
					return linux
				elseif osName.sysname == "Windows_NT" then
					return windows
				elseif osName.sysname == "Darwin" then
					return mac
				end
			end,
			lineFeed = function()
				local neutralhighlight = "%#St_Pos_txt#"
				local linefeed = vim.bo.fileformat
				if string.len(linefeed) == 0 then
					return ""
				end
				if linefeed == "unix" then
					return neutralhighlight .. "LF "
				elseif linefeed == "dos" then
					return "CRLF "
				elseif linefeed == "mac" then
					return "CR "
				else
					return "man you really are using a weird OS ngl"
				end
			end,
			fileEncoding = function()
				local encoding = vim.bo.fileencoding
				local neutralhighlight = "%#St_Pos_txt#"
				if string.len(encoding) == 0 then
					return ""
				end
				return neutralhighlight .. string.upper(encoding) .. ", "
			end,
			tabLength = function()
				local tablen = vim.bo.tabstop
				local neutralhighlight = "%#St_Pos_txt#"
				if string.len(tablen) == 0 then
					return ""
				end
				return neutralhighlight .. "Tabs: " .. tablen .. ","
			end,
		},
	},
	telescope = {
		style = "bordered",
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
		--},
		header = {
			"     ▄▄         ▄ ▄▄▄▄▄▄▄    ",
			"   ▄▀███▄     ▄██ █████▀     ",
			"   ██▄▀███▄   ███            ",
			"   ███  ▀███▄ ███            ",
			"   ███    ▀██ ███            ",
			"   ███      ▀ ███            ",
			"   ▀██ █████▄▀█▀▄██████▄     ",
			"     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀    ",
		},
		-- header = {
		-- 	"                                                                       ",
		-- 	"                                                                     ",
		-- 	"       ████ ██████           █████      ██                     ",
		-- 	"      ███████████             █████                             ",
		-- 	"      █████████ ███████████████████ ███   ███████████   ",
		-- 	"     █████████  ███    █████████████ █████ ██████████████   ",
		-- 	"    █████████ ██████████ █████████ █████ █████ ████ █████   ",
		-- 	"  ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
		-- 	" ██████  █████████████████████ ████ █████ █████ ████ ██████ ",
		-- 	"                                                                       ",
		-- },
		-- updated = {
		--     "                                                          ",
		--     "    ███████  ███████  ███    ▄▄         ▄                 ",
		--     "      ███      ███    ███  ▄▀███▄     ▄██                 ",
		--     "      ███     ███     ███  ██▄▀███▄   ███                 ",
		--     "      ███    ███      ███  ███  ▀███▄ ███                 ",
		--     "      ███   ███       ███  ███    ▀██ ███                 ",
		--     "      ███  ███        ███  ███      ▀ ███                 ",
		--     "      ███████         ███  ▀██ █████▄▀█▀▄█                ",
		--     "       █████          ███    ▀ ▀▀▀▀▀▀▀ ▀▀▀                ",
		-- },

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
		["Include"] = { link = "@keyword.repeat" },
		["@punctuation.delimiter"] = { fg = "white" },
		["@property"] = { link = "CustomVVariable" },
		["Label"] = { link = "CustomVVariable" },
		["@punctuation.bracket"] = { link = "CustomVPurple" },
		["Delimiter"] = { link = "CustomVPurple" },
		["Boolean"] = { link = "CustomVBool" },
		["@constant.builtin"] = { link = "CustomVBool" },
		["@constant"] = { link = "CustomVBool" },
		-- ["@keyword.storage"] = { link = "CustomVBool" },
		["Type"] = { link = "CustomVType" },
		["@type.builtin"] = { link = "CustomVType" },
		["Function"] = { link = "CustomVFunction" },
		["@function"] = { link = "CustomVFunction" },
		["@function.builtin"] = { link = "CustomVFunction" },
		-- ["@function.macro"] = { link = "@keyword.function" },
		["@variable"] = { link = "CustomVVariable" },
		["@variable.member"] = { link = "CustomVProperty" },
		["@function.call"] = { link = "CustomVFunction" },
		["@lsp.type.method.rust"] = { link = "CustomVFunction" },
		-- ["@constructor"] = { fg = "" },
		-- ["@spell"] = { guifg = "cyan" },
		NvDashAscii = {
			fg = "green",
			bg = "none",
		},
		NvDashButtons = {
			fg = "light_grey",
			bg = "none",
		},
		-- SpellCap = {
		--     undercurl = true;
		-- }
	},
}

return M
