execute pathogen#infect()
call pathogen#helptags()

set hidden
set path=.,**
set shiftround
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set splitright
set splitbelow

augroup dracula
    autocmd!
    autocmd ColorScheme dracula highlight Normal guibg=NONE ctermbg=NONE
    autocmd ColorScheme dracula highlight Type guibg=NONE ctermbg=NONE
augroup END
colorscheme dracula

inoremap jk <esc>

" Completion

set completeopt=menuone,noinsert,noselect,preview

let g:UltisnipsExpandTrigger = "<c-e>"

autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
            \ 'name': 'file',
            \ 'allowlist': ['*'],
            \ 'priority': 10,
            \ 'completor': function('asyncomplete#sources#file#completor')
            \ }))

autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
            \ 'name': 'ultisnips',
            \ 'allowlist': ['*'],
            \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
            \ }))

autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#emmet#get_source_options({
            \ 'name': 'emmet',
            \ 'whitelist': ['html'],
            \ 'completor': function('asyncomplete#sources#emmet#completor'),
            \ }))
