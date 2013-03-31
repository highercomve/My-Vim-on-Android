"The basic settings
set nocp
set ls=2
set tabstop=2
set softtabstop=2 
set shiftwidth=2
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
set mouse=a " Enable the mouse
set ttymouse=xterm2
behave xterm
set selectmode=mouse
set guifont=Monospace\ 12
set guioptions=aegimLt1T
set tb=icons,tooltips
set tbis=small
set dir=~/.vim/backup/
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

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
" let g:miniBufExplMapWindowNavVim    = 1
" let g:miniBufExplMapWindowNavArrows = 1

noremap <C-J> <C-W>h
noremap <C-L> <C-W>l
noremap <C-I> <C-W>j
noremap <C-K> <C-W>k
  
noremap <C-Down>  <C-W>j
noremap <C-Up>    <C-W>k
noremap <C-Left>  <C-W>h
noremap <C-Right> <C-W>l

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
let g:user_zen_expandabbr_key = '<c-z>'

"start NERDTree on startup..
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
