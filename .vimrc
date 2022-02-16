call plug#begin()
" editor
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jesseleite/vim-agriculture'
Plug 'valloric/youcompleteme', { 'do': 'python3 ./install.py' }
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'yaroot/vissort'
Plug 'chrisbra/unicode.vim'
Plug 'hashivim/vim-terraform'
" Plug 'sheerun/vim-polyglot'

" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'

" python
Plug 'psf/black', { 'branch': 'stable' }
Plug 'nvie/vim-flake8'

Plug 'flazz/vim-colorschemes'
Plug 'ap/vim-buftabline'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

silent! colorscheme molokai_dark
let g:airline_theme="lucius"

set encoding=UTF-8

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab

set foldmethod=indent
set nofoldenable

" show hidden chars
set list listchars=tab:>·,trail:~,extends:>,precedes:<,space:·
highlight SpecialKey ctermfg=darkgrey

" include dashes for text-objects
set iskeyword+=-

" line numbers
set relativenumber
set hidden
set splitright
nnoremap <C-j> :bprev<CR>
nnoremap <C-k> :bnext<CR>
nnoremap <C-h> :tabprev<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-q> :bd!<CR>
nnoremap <C-X> :bd!<CR>

" change leader key
let mapleader = " "
nmap <leader>/ <Plug>RgRawSearch
vmap <leader>/ <Plug>RgRawVisualSelection
nmap <leader>* <Plug>RgRawWordUnderCursor
nmap <leader>rg :Rg<CR>
nnoremap <leader>h :set hlsearch!<CR>
nnoremap <leader>@ :BTags<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>F :Black<CR>
nnoremap <leader>c :History:<CR>
nnoremap <leader>C :Commands<CR>
nnoremap <leader>H :History<CR>
nnoremap <leader>B :Buffers<CR>
nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>ve :e $MYVIMRC<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
vnoremap <C-C> "+y :exec "echo 'copied to clipboard'"<CR>h
nmap <leader>? <plug>(YCMHover)
nmap <leader>R gg=G<C-o><C-o>
nmap =j :%!python -m json.tool<CR>
inoremap <C-j> <down>
inoremap <C-k> <up>
cnoremap <C-A> <Home>
cnoremap <C-B> <Left>

" Surround like delete/change surrounding function calls
nmap <silent> dsf ds)db
nnoremap <silent> csf [(cb

" change repeat
nnoremap c* *Ncgn

" git
nnoremap <leader>ge :vsp<CR>:Gedit master:%
vnoremap <leader>gg :GBrowse<CR>

let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'

" YCM options
let g:ycm_auto_hover = ''

let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:flake8_show_in_file=1

" black
let g:black_linelength = 120

" ignore files
let g:NERDTreeIgnore = [ "__pycache__" ]

" format tf on save
let g:terraform_fmt_on_save=1
let g:terraform_align=1

augroup vimrc
autocmd!
autocmd FileType yaml,json,markdown,terraform,tf,html,css,dosini setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd FileType go setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
autocmd FileType python set foldmethod=indent
autocmd BufNewFile,BufRead */.kube/config set filetype=yaml
" autocmd BufWritePre *.py execute ':Black'
autocmd BufWritePost *.py call flake8#Flake8()
augroup END

" backup history
set undofile
set undodir=~/.vim/undovim

" default updatetime 4000ms is not good for async update
set updatetime=250

