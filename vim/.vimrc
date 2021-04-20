syntax enable

filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'itchyny/lightline.vim'
call plug#end()

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
hi ColorColumn ctermbg=0

" With a map leader it's possible to do extra key combinations
let mapleader = ","

nmap <leader>w :w!<cr>
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

set number
set rnu
set so=7
set wmnu
set ruler
set cmdheight=1
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
set tm=500
set t_vb=
set t_Co=256
set background=dark

set ls=2
let g:lightline = { 'colorscheme': 'solarized', }

hi Visual ctermbg=white ctermfg=0
hi Search ctermbg=5 ctermfg=0

" Set IBeam shape in insert mode, underline shape in replace mode and block shape in normal mode.
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

map <space> /
map <C-space> ?
map 0 ^

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
map <leader>bd :Bclose<cr>:tabclose<cr>gT
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

