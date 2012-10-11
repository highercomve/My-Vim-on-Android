""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc default setup file for Terminbal IDE  "
"                                              "
" Creator : Spartacus Rex                      "
" Version : 1.0                                "
" Date    : 9 Nov 2011                         "
""""""""""""""""""""""""""""""""""""""""""""""""

"The basic settings
set nocp
set ls=2
set tabstop=2
set ruler
set number
set ignorecase
set modeline
set nobackup
set nowrap
set hidden
set backspace=indent,eol,start
set mouse=a
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
let g:miniBufExplMapWindowNavVim    = 1
let g:miniBufExplMapWindowNavArrows = 1

"You can change colors easily in vim. 
"Just type <ESC>:colorscheme and then TAB complete through the options 
colorscheme desert
set background=dark

"Set the color for the popup menu
:highlight Pmenu ctermbg=blue ctermfg=white
:highlight PmenuSel ctermbg=blue ctermfg=red
:highlight PmenuSbar ctermbg=cyan ctermfg=green
:highlight PmenuThumb ctermbg=white ctermfg=red

" DICTIONARY
" The dictioanry can pop up a lot of words when you have Auto popup enabled. 
" You can disable auto popup, by removing the acp.vim from your ~/.vim/plugin/
" directory and enable the dictionary here - then use <CTRL>X <CTRL>K to bring
" up the dictionary options. Or just enable it.. :-)
"set dictionary+=~/system/etc/dict/words

" Make vim popup behave more like an IDE POPUP
set completeopt=longest,menuone

" Make enter finish the completion popup menu
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

call pathogen#infect()

"start NERDTree on startup..
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
