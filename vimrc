execute pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" because it's there
runtime macros/matchit.vim

" various settings
set autoindent
set backspace=indent,eol,start
set hidden
set incsearch
set path=.,**
set ruler
set shiftround
set smarttab
set wildmenu

augroup dracula
	autocmd!
	autocmd ColorScheme dracula highlight Normal guibg=NONE ctermbg=NONE
	autocmd ColorScheme dracula highlight Type guibg=NONE ctermbg=NONE
augroup END
colorscheme dracula

inoremap jk <esc>
