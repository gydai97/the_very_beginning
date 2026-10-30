require("config")
require("helper")


--[[
	:map		Normal, Visual and Operator-pending
	:vmap		Visual
	:nmap		Normal
	:omap		Operator-pending
	:map!		Insert and Command-line
	:imap		Insert
	:cmap		Command-line
	:noremap	Normal, Visual and Operator-pending
	:vnoremap	Visual
	:nnoremap	Normal
	:onoremap	Operator-pending
	:noremap!	Insert and Command-line
	:inoremap	Insert
	:cnoremap	Command-line

	"noremap" is to avoid keys to be mapped again!
]]--

vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function() vim.hl.on_yank() end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = {"*"},
    callback = function() vim.cmd [[:%s/\s\+$//e]] end,
})
