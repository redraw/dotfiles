call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-buftabline'
Plug 'gcmt/wildfire.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

let mapleader = "\<Space>"

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab
" lang specific
autocmd FileType yaml,json,markdown,terraform,html,css,javascript,dosini setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd BufNewFile,BufRead */.kube/config set filetype=yaml

"colorscheme elflord
colorscheme dracula

" line numbers
set relativenumber
set foldmethod=syntax

" json pretty-print
nmap =j :%!python -m json.tool<CR>

" buffertabs
set hidden
nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprev<CR>
nnoremap <C-q> :bd!<CR>

" git
set splitright
nnoremap <leader>ge :vsp<CR>:Gedit master:%
vnoremap <leader>gg :GBrowse<CR>

" clipboard
vnoremap <C-c> "+y :exec "echo 'copied!'"<CR>h

" backup history
set undofile
set undodir=~/.vim/undovim

set pastetoggle=<F3>

" Surround like delete/change surrounding function calls
nmap <silent> dsf ds)db
nnoremap <silent> csf [(cb
