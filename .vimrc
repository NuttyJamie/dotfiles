set tabstop=4
set shiftwidth=4
set nu
set background=dark
set fileencodings=utf-8,cp949

syntax enable

hi TabLine		cterm=none ctermfg=Black ctermbg=grey
hi TabLineSel	ctermfg=White ctermbg=black
hi TabLineFill 	cterm=none ctermbg=grey

"Hotkey for view buffer list
nnoremap gb :ls<CR>:b<Space>

"Tabsize by file type
autocmd FileType html setlocal shiftwidth=2 tabstop=2 autoindent

"OS-Specific preferences
if system('uname') == 'Darwin' "Not tested yet.
	let &t_SI.="\e[5 q" "SI= INSERT MODE
	let &t_SR.="\e[3 q" "SR= REPLACE MODE
	let &t_EI.="\e[2 q" "EI= NORMAL MODE (ELSE)
endif

if has('win64')||has('win32')
	colorscheme solarized
endif

