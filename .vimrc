set tabstop=4
set shiftwidth=4
set nu
set background=dark

if has("syntax")
	syntax on
endif

hi TabLine		cterm=none ctermfg=Black ctermbg=grey
hi TabLineSel	ctermfg=White ctermbg=black
hi TabLineFill 	cterm=none ctermbg=grey

nnoremap gb :ls<CR>:b<Space>
