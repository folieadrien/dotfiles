call pathogen#infect()
call pathogen#helptags()



set nocompatible "ensures vim over vi
set number
set ruler "add line/column count to the bottom of screen
"syntax on
"
set showmatch "Show matching brackets
syntax enable
set noerrorbells visualbell t_vb= "turn off annoying bells
set tags=.tags "destination file for ctags







set autoindent

" Tabs
set noexpandtab

autocmd FileType ruby setlocal shiftwidth=2 expandtab softtabstop=2
autocmd FileType eruby setlocal shiftwidth=2 expandtab softtabstop=2
autocmd FileType yaml setlocal shiftwidth=2 expandtab softtabstop=2
autocmd FileType json setlocal shiftwidth=2 expandtab softtabstop=2
autocmd FileType scss setlocal shiftwidth=2 expandtab softtabstop=2

set tabstop=4 "tabs are 4 space long
set shiftwidth=4

"Settings for C and C++
autocmd FileType c set colorcolumn=80
autocmd FileType c set list
autocmd FileType cpp set colorcolumn=80
autocmd FileType cpp set list

" Temp files
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap/
set undodir=~/.vim/tmp/undo//

"List chars
" invisible character setting
" unicode for \u25b8 for `▸', \u00ac for `¬'
set listchars=tab:▸\ ,eol:¬,trail:?,extends:>,precedes:<,nbsp:.

filetype plugin indent on


" NERDTree
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
autocmd vimenter * if !argc() | NERDTree | endif
nmap <F8> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\*.DS_STORE$']
"let g:NERDTreeDirArrows=0

" For MacVim
if has('gui_running')
   syntax enable
   set background=dark
   colorscheme solarized
endif


set splitright "opens new split on the right
set splitbelow "open new vsplit on the bottom

" Remove trailling whitespace on :w
autocmd BufWritePre * :%s/\s\+$//e

" Incremental search
set incsearch

highlight Cursor guibg=Green guifg=NONE
