set tabstop=4
set shiftwidth=4
set nu
set background=dark

syntax enable

"Apply colorscheme on Windows
if has('win64')||has('win32')
	colorscheme solarized
endif

hi TabLine		cterm=none ctermfg=Black ctermbg=grey
hi TabLineSel	ctermfg=White ctermbg=black
hi TabLineFill 	cterm=none ctermbg=grey

"Hotkey for view buffer list
nnoremap gb :ls<CR>:b<Space>

"Tabsize by file type
autocmd FileType html setlocal shiftwidth=2 tabstop=2
