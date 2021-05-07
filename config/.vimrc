" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime
filetype indent on
filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'arzg/vim-colors-xcode'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

syntax enable

set viminfo="NONE"
set nobackup
set nowb
set noswapfile
set hid
set history=50
set ts=4 " tab = n spaces
set sw=4 " (auto)indent
set et   " expand tab
set smarttab
set ai
set si
set lbr
set wrap

set textwidth=100
set colorcolumn=-2

" With a map leader it's possible to do extra key combinations
let mapleader = "\<space>"

command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

set number
set rnu
set so=7
set wmnu
set ruler
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=4
set noerrorbells
set novisualbell
set t_vb=
set t_Co=256
set laststatus=2 "show statusbar

colorscheme xcodedark
hi Search ctermbg=26 ctermfg=254
hi Normal ctermbg=none
hi EndOfBuffer ctermbg=none
hi ColorColumn ctermbg=black

" Set IBeam shape in insert mode, underline shape in replace mode and block shape in normal mode.
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"let g:lightline = {
"          \ 'colorscheme': 'selenized_black',
"      \ }

let g:airline_theme = 'minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:livepreview_engine = 'pdflatex'
let g:livepreview_previewer = 'zathura'
let g:livepreview_cursorhold_recompile = 0

"map <space> /
"map <C-space> ?
map 0 ^

nmap <leader>w :w!<cr>
" Quickly list buffers
nmap <leader>. :ls<cr>

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>
" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>
" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>gT
" Close all the buffers
map <leader>ba :bufdo bd<cr>
" Move between buffers
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Opens a new tab with the current buffer's path
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Delete trailing white space on save, useful for some filetypes ;)
au BufWritePre * :%s/\s\+$//ge

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <S-j> mz:m+<cr>`z
nmap <S-k> mz:m-2<cr>`z
vmap <S-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <S-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif

endfunction
