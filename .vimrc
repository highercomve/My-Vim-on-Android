""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc default setup file for Terminbal IDE  "
"                                              "
" Creator : Spartacus Rex                      "
" Version : 1.0                                "
" Date    : 9 Nov 2011                         "
""""""""""""""""""""""""""""""""""""""""""""""""

"The basic settings

set nocompatible
set nocp
set ls=2
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set expandtab
set showmatch 
set hlsearch  
set ruler
set number
set ignorecase
set modeline
set nobackup
set nowrap
set hidden
set backspace=indent,eol,start
set mouse=a
set ttymouse=xterm2
behave xterm
set selectmode=mouse
set whichwrap=[,],h,l
set autoindent

"Syntax highlighting
syntax on

"Yes filetype matter
filetype plugin indent on

"Set a nice Omnifunc - <CTRL>X <CTRL>O
set ofu=syntaxcomplete#Complete

"Mapped some FUNCTION keys to be more useful..
map <F7> :make<Return>:copen<Return>
map <F8> :cprevious<Return>
map <F9> :cnext<Return>

"This is a nice buffer switcher
:nnoremap <F5> :buffers<CR>:buffer<Space>

" These are useful when using MinBufExpl, use CTRL+ARROW key mappings
noremap <C-J> <C-W>h
noremap <C-L> <C-W>l
noremap <C-I> <C-W>j
noremap <C-K> <C-W>k

noremap <C-Down>  <C-W>j
noremap <C-Up>    <C-W>k
noremap <C-Left>  <C-W>h
noremap <C-Right> <C-W>l
" let g:miniBufExplMapWindowNavVim    = 1
" let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplCTabSwitchBufs     = 1
let g:miniBufExplSelTarget          = 1

"You can change colors easily in vim. 
"Just type <ESC>:colorscheme and then TAB complete through the options 
colorscheme desert
set background=dark

"Set the color for the popup menu
:highlight Pmenu ctermbg=blue ctermfg=white
:highlight PmenuSel ctermbg=blue ctermfg=red
:highlight PmenuSbar ctermbg=cyan ctermfg=green
:highlight PmenuThumb ctermbg=white ctermfg=red

" Make vim popup behave more like an IDE POPUP
set completeopt=longest,menuone

" Make enter finish the completion popup menu
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

call pathogen#infect()

"start NERDTree on startup..
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
