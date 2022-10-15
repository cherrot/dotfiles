local global = require("core.global")

local function load_options()
	local global_local = {
		termguicolors = true,
		mouse = "a",
		errorbells = true,
		visualbell = true,
		hidden = true,
		fileformats = "unix,mac,dos",
		magic = true,
		virtualedit = "block",
		encoding = "utf-8",
		viewoptions = "folds,cursor,curdir,slash,unix",
		sessionoptions = "curdir,help,tabpages,winsize",
		clipboard = "unnamedplus",
		wildignorecase = true,
		wildignore = ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**",
		backup = false,
		writebackup = false,
		swapfile = false,
		undodir = global.cache_dir .. "undo/",
		-- directory = global.cache_dir .. "swap/",
		-- backupdir = global.cache_dir .. "backup/",
		-- viewdir = global.cache_dir .. "view/",
		-- spellfile = global.cache_dir .. "spell/en.uft-8.add",
		history = 2000,
		shada = "!,'300,<50,@100,s10,h",
		backupskip = "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim",
		shiftround = true,
		timeout = true,
		ttimeout = true,
		timeoutlen = 500,
		ttimeoutlen = 0,
		-- updatetime = 5000,
		-- redrawtime = 2000,
		ignorecase = true,
		smartcase = true,
		infercase = true,
		incsearch = true,
		wrapscan = true,
		complete = ".,w,b,k",
		inccommand = "nosplit",
		grepformat = "%f:%l:%c:%m",
		grepprg = "rg --hidden --vimgrep --smart-case --",
		breakat = [[\ \	;:,!?]],
		startofline = false,
		-- < and > mean the left/right keys in normal and visual mode. [ and ] mean the left/right arrows in insert and replace mode
		whichwrap = "<,>,[,],~",
		splitbelow = true,
		splitright = true,
		switchbuf = "useopen",
		backspace = "indent,eol,start",
		diffopt = "filler,iwhite,internal,algorithm:patience",
		completeopt = "menuone,noselect",
		jumpoptions = "stack",
		showmode = false,
		shortmess = "aoOTIcF",
		scrolloff = 2,
		sidescrolloff = 5,
		foldlevelstart = 99,
		ruler = true,
		-- cursorline = true,
		cursorcolumn = true,
		list = true,
		showtabline = 2,
		winwidth = 30,
		winminwidth = 10,
		pumheight = 15,
		helpheight = 12,
		previewheight = 12,
		showcmd = true,
		-- save space to display messages.
		cmdheight = 2,
		cmdwinheight = 5,
		equalalways = false,
		laststatus = 2,
		display = "lastline",
		showbreak = "↳  ",
		listchars = "tab:»·,nbsp:+,trail:·,extends:→,precedes:←",
		-- pumblend = 10,
		-- winblend = 10,
		autoread = true,
		autowrite = true,

		undofile = true,
		-- Maximum column in which to search for syntax items.
		synmaxcol = 512,
		formatoptions = "1jcroql",

		smartindent = true,
		autoindent = true,
		smarttab = true,
		expandtab = true,
		tabstop = 4,
		shiftwidth = 4,
		softtabstop = 4,

		breakindentopt = "shift:2,min:20",
		wrap = false,
		linebreak = true,
		number = true,
		relativenumber = true,
		foldenable = true,
		signcolumn = "auto", -- "number"
		conceallevel = 0,
		concealcursor = "niv",
	}

	if global.is_mac then
		vim.g.clipboard = {
			name = "macOS-clipboard",
			copy = { ["+"] = "pbcopy", ["*"] = "pbcopy" },
			paste = { ["+"] = "pbpaste", ["*"] = "pbpaste" },
			cache_enabled = 0,
		}
		vim.g.python_host_prog = "/usr/bin/python"
		vim.g.python3_host_prog = "/usr/local/bin/python3"
	else
		vim.g.python_host_prog = "/usr/bin/python"
		vim.g.python3_host_prog = "/usr/bin/python3"
	end
	for name, value in pairs(global_local) do
		vim.opt[name] = value
	end
end

load_options()