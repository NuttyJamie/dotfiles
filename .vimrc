set tabstop=4
set shiftwidth=4
set nu
set background=dark
set encoding=utf-8
set fileencodings=utf-8,cp949
syntax enable

hi TabLine		cterm=none ctermfg=Black ctermbg=grey
hi TabLineSel	ctermfg=White ctermbg=black
hi TabLineFill 	cterm=none ctermbg=grey

"Hotkey for view buffer list
nnoremap gb :ls<CR>:b<Space>

"Tabsize by file type
autocmd FileType html setlocal shiftwidth=2 tabstop=2 autoindent

if has('win64')||has('win32')
	set backspace=indent,eol,start
	set guioptions-=r "scrollbar
endif

if has("gui_running") && filereadable(expand("~/.vim/colors/solarized.vim"))
	colorscheme solarized
endif
