set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set shiftwidth=4

" Plugins
" nvim location follows more recent gnome specification and can be inspected with :echom stdpath('data')
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged') 

" colorscheme
Plug 'EdenEast/nightfox.nvim'

call plug#end()

colorscheme nightfox

" clipboard support in WSL
if has('wsl')
    let g:clipboard = {
        \   'name': 'wsl-clipboard',
        \   'copy': {
        \      '+': 'win32yank.exe -i --crlf',
        \      '*': 'win32yank.exe -i --crlf',
        \    },
        \   'paste': {
        \      '+': 'win32yank.exe -o --lf',
        \      '*': 'win32yank.exe -o --lf',
        \   },
        \   'cache_enabled': 1,
        \ }
endif
