local vim = vim
local autocmd = {}

function autocmd.nvim_create_augroups(definitions)
	for group_name, definition in pairs(definitions) do
		vim.api.nvim_command("augroup " .. group_name)
		vim.api.nvim_command("autocmd!")
		for _, def in ipairs(definition) do
			local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
			vim.api.nvim_command(command)
		end
		vim.api.nvim_command("augroup END")
	end
end

function autocmd.load_autocmds()
	local definitions = {
		packer = {},
		bufs = {
			{ "BufWritePre", "/tmp/*", "setlocal noundofile" },
			{ "BufWritePre", "COMMIT_EDITMSG", "setlocal noundofile" },
			{ "BufWritePre", "MERGE_MSG", "setlocal noundofile" },
			{ "BufWritePre", "*.tmp", "setlocal noundofile" },
			{ "BufWritePre", "*.bak", "setlocal noundofile" },
			-- auto change directory
			-- { "BufEnter", "*", "silent! lcd %:p:h" },
			-- auto place to last edit
			{
				"BufReadPost",
				"*",
				[[if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif]],
			},
			{
				"BufEnter",
				"*",
				[[++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif]],
			},
		},
		wins = {
			-- Highlight current line only on focused window
			{
				"WinEnter,BufEnter,InsertLeave",
				"*",
				[[if ! &cursorline && &filetype !~# '^\(dashboard\|clap_\)' && ! &pvw | setlocal cursorline | endif]],
			},
			{
				"WinLeave,BufLeave,InsertEnter",
				"*",
				[[if &cursorline && &filetype !~# '^\(dashboard\|clap_\)' && ! &pvw | setlocal nocursorline | endif]],
			},
			-- Force write shada on leaving nvim
			{
				"VimLeave",
				"*",
				[[if has('nvim') | wshada! | else | wviminfo! | endif]],
			},
			-- Check if file changed when its window is focus, more eager than 'autoread'
			{ "FocusGained", "* checktime" },
			-- Equalize window dimensions when resizing vim window
			{ "VimResized", "*", [[tabdo wincmd =]] },
		},
		ft = {
			{ "FileType", "alpha", "set showtabline=0" },
			{ "FileType", "markdown", "set wrap" },
			{ "FileType", "make", "set noexpandtab shiftwidth=8 softtabstop=0" },
			-- Google tab style
			-- { "FileType", "c,cpp", "set expandtab tabstop=2 shiftwidth=2" },
			{ "FileType", "dap-repl", "lua require('dap.ext.autocompl').attach()" },
			{
				"FileType",
				"*",
				[[setlocal formatoptions-=cro]],
			},
			{
				"FileType",
				"c,cpp",
				"nnoremap <leader>h :ClangdSwitchSourceHeaderVSplit<CR>",
			},
			{ "FileType", "go", "set noexpandtab" },
		},
		yank = {
			{
				"TextYankPost",
				"*",
				[[silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=300})]],
			},
		},
		colorscheme = {
			-- `:hi Comment` to check current color for Comment (default is #616e88)
			-- 5% brighter #6d7a96, 10% brighter #7b88a1 from https://github.com/arcticicestudio/nord-emacs/issues/43
			{ "ColorScheme", "nord", "highlight Comment ctermfg=14 guifg=#6d7a96" },
			-- Folded by default is #4C566A, which is too dark to recognize.
			{ "ColorScheme", "nord", "highlight Folded cterm=italic,bold guifg=#576279" },
		},
	}

	autocmd.nvim_create_augroups(definitions)
end

autocmd.load_autocmds()
