call plug#begin()
Plug 'tpope/vim-sensible'
" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'dracula/vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'posva/vim-vue'
" Plug 'klen/python-mode'
call plug#end()

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"colorscheme elflord
colorscheme dracula

" line numbers
set nu

" tab navigation
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
map ts :tab split<CR>
noremap ,t :NERDTreeToggle<CR>
nmap =j :%!python -m json.tool<CR>

set pastetoggle=<F3>
