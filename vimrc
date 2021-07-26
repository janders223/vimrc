execute pathogen#infect()
call pathogen#helptags()

set hidden
set path=.,**
set shiftround
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab

augroup dracula
	autocmd!
	autocmd ColorScheme dracula highlight Normal guibg=NONE ctermbg=NONE
	autocmd ColorScheme dracula highlight Type guibg=NONE ctermbg=NONE
augroup END
colorscheme dracula

inoremap jk <esc>
