" execute pathogen#infect()

:set tabstop=4 softtabstop=4 shiftwidth=4 smarttab expandtab
":set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=100 smarttab expandtab
syntax enable
colorscheme monokai
"set relativenumber
set number

call plug#begin()
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/vim-easy-align'
Plug 'pangloss/vim-javascript'
call plug#end()

set laststatus=2

" use system clipboard by default
set clipboard=unnamedplus

" cycle through clusters
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Print column ruler
set colorcolumn=100

" Code folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" Flag trailing whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Pretty
let python_highlight_all=1
syntax on

" Javascript improved syntax
let g:javascript_plugin_jsdoc = 1
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 softtabstop=2 tabstop=2

" NERDCommenter settings
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1

" CtrlP configuration
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" noremap <C-p> :CtrlPBuffer
