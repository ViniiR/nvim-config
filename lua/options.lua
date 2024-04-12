require("nvchad.options")

--
vim.opt.spelllang = { "en_us" }
vim.opt.spell = true

-- floating error messages
vim.diagnostic.config {
  virtual_text = false,
  float = {
    header = false,
    border = 'rounded',
    focusable = true,
  },
}

-- my options
vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4

vim.g.vscode_snippets_path = vim.fn.stdpath("config") .. "/lua/snippets/vscode"

-- remaps CTRL ^H ( backspace ) to delete word
-- possibly broken but no need to fix
vim.api.nvim_set_keymap("i", "<C-H>", "<C-W>", { noremap = true })
vim.api.nvim_set_keymap("c", "<C-H>", "<C-W>", { noremap = true })

-- attempt to use ctrl del but doesnt work
-- vim.api.nvim_set_keymap('i', '<C-D>', 'dw', {noremap = true})
-- vim.api.nvim_set_keymap('c', '<C-D>', 'dw', {noremap = true})

-- custom groups
vim.cmd("highlight CustomVBool guifg=#4d98d6")
vim.cmd("highlight CustomVHTML guifg=#808080")
vim.cmd("highlight CustomVVariable guifg=#4fc1ff")
vim.cmd("highlight CustomVFunction guifg=#d4814e")
vim.cmd("highlight CustomVType guifg=#4ebd90")
vim.cmd("highlight CustomVProperty guifg=#8dc5e3")
vim.cmd("highlight CustomVPurple guifg=#bfa7f2")
vim.cmd("highlight Constant guifg=#4d98d6")
-- vim.cmd("highlight spell guifg=#11abe4")

-- Highlight the @foo.bar capture group with the "Identifier" highlight group
-- [] {} ()
vim.api.nvim_set_hl(0, "@punctuation.bracket.tsx", { link = "CustomVPurple" })
vim.api.nvim_set_hl(0, "@punctuation.bracket.typescript", { link = "CustomVPurple" })
-- ; ,
vim.api.nvim_set_hl(0, "@punctuation.delimiter.tsx", { link = "@none" })
vim.api.nvim_set_hl(0, "@punctuation.delimiter.typescript", { link = "@none" })
-- <></>
vim.api.nvim_set_hl(0, "@tag.delimiter.tsx", { link = "CustomVHTML" })
-- <tagName></tagName>
vim.api.nvim_set_hl(0, "@tag.builtin.tsx", { link = "CustomVBool" })
-- let var: Type;
vim.api.nvim_set_hl(0, "@type.builtin.tsx", { link = "CustomVType" })
vim.api.nvim_set_hl(0, "@type.builtin.typescript", { link = "CustomVType" })
vim.api.nvim_set_hl(0, "@type.tsx", { link = "CustomVType" })
vim.api.nvim_set_hl(0, "@type.typescript", { link = "CustomVType" })

-- object property
vim.api.nvim_set_hl(0, "@variable.member.typescript", { link = "CustomVProperty" })
vim.api.nvim_set_hl(0, "@variable.member.tsx", { link = "CustomVProperty" })

vim.api.nvim_set_hl(0, "@boolean.tsx", { link = "CustomVBool" })
vim.api.nvim_set_hl(0, "@boolean.typescript", { link = "CustomVBool" })

-- vars
vim.api.nvim_set_hl(0, "@variable.tsx", { link = "CustomVVariable" })
vim.api.nvim_set_hl(0, "@variable.typescript", { link = "CustomVVariable" })
vim.api.nvim_set_hl(0, "@variable.typescript", { link = "CustomVVariable" })
vim.api.nvim_set_hl(0, "@variable.builtin.tsx", { link = "CustomVVariable" })
vim.api.nvim_set_hl(0, "@variable.builtin.typescript", { link = "CustomVVariable" })

-- imports
vim.api.nvim_set_hl(0, "@keyword.import.tsx", { link = "@keyword.coroutine.tsx" })
vim.api.nvim_set_hl(0, "@keyword.import.typescript", { link = "@keyword.coroutine.tsx" })

-- funcs
vim.api.nvim_set_hl(0, "@function.tsx", { link = "CustomVFunction" })
vim.api.nvim_set_hl(0, "@function.typescript", { link = "CustomVFunction" })

-- func calls
vim.api.nvim_set_hl(0, "@function.call.tsx", { link = "CustomVFunction" })
vim.api.nvim_set_hl(0, "@function.call.typescript", { link = "CustomVFunction" })
vim.api.nvim_set_hl(0, "@function.method.call.typescript", { link = "CustomVFunction" })
vim.api.nvim_set_hl(0, "@function.method.call.tsx", { link = "CustomVFunction" })

-- tags attr className
vim.api.nvim_set_hl(0, "@tag.attribute.tsx", { link = "CustomVProperty" })
-- tsx tag
vim.api.nvim_set_hl(0, "@tag.tsx", { link = "CustomVType" })
