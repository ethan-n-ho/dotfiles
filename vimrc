syntax on
filetype plugin indent on

set nocompatible
set autoread
set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" recommended for coc.vim
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300

" leader key
let mapleader = " "

" ********************************* Functions *********************************

" prevent auto-indenting on paste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
      set pastetoggle=<Esc>[201~
        set paste
          return ""
      endfunction

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" ************************************ Keymaps ********************************

" pane navigation
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
nnoremap <silent> <leader>b gT
nnoremap <silent> <leader>w gt
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <leader>tn :tabnew<SPACE>
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <leader>tml :tabmove -1<CR>
nnoremap <leader>tmr :tabmove +1<CR>
nnoremap <leader>pv :Vex<CR>
nnoremap <leader>ps :Rg<SPACE>

" misc
noremap <leader>y "*y
noremap <leader>p "*p
noremap <leader>dws :s/\s\+$//g<CR>

" autocompleters
autocmd BufWritePre * :call TrimWhitespace()

