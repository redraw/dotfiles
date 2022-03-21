call plug#begin()
" editor
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jesseleite/vim-agriculture'
Plug 'ludovicchabant/vim-gutentags'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'preservim/nerdtree'
Plug 'liuchengxu/vista.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'chrisbra/unicode.vim'
Plug 'hashivim/vim-terraform'
Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'

" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'

" python
Plug 'psf/black', { 'branch': 'stable' }

Plug 'flazz/vim-colorschemes'
Plug 'ap/vim-buftabline'
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

set nobackup
set nowritebackup

set signcolumn=yes

" show hidden chars
set list listchars=tab:>·,trail:~,extends:>,precedes:<,space:·
highlight SpecialKey ctermfg=darkgrey

" newline between yanks
set cpoptions+=>

" include dashes for text-objects
set iskeyword+=-

" line numbers
set relativenumber
set hidden
set splitright

" backup history
set undofile
if !has("nvim")
set undodir=~/.vim/undo
endif

" default updatetime 4000ms is not good for async update
set updatetime=250

" already been welcomed
set shortmess=I

let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'

" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" black
let g:black_linelength = 120

" ignore files
let g:NERDTreeIgnore = [ "__pycache__" ]
let g:NERDTreeQuitOnOpen=1

let g:gutentags_file_list_command = 'rg --files'
let g:gutentags_cache_dir = "~/.local/share/ctags"

" format tf on save
let g:terraform_fmt_on_save=1
let g:terraform_align=1

" nav
nnoremap <C-j> :bprev<CR>
nnoremap <C-k> :bnext<CR>
nnoremap <C-h> :tabprev<CR>
nnoremap <C-l> :tabnext<CR>
inoremap <C-j> <down>
inoremap <C-k> <up>
cnoremap <C-A> <Home>
cnoremap <C-B> <Left>

" leader key
let mapleader = " "
nmap <leader>/ <Plug>RgRawSearch
vmap <leader>/ <Plug>RgRawVisualSelection
nmap <leader>* <Plug>RgRawWordUnderCursor
nmap <leader>rg :Rg<CR>
nnoremap <leader>x :bd!<CR>
nnoremap <leader>h :set hlsearch!<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>ve :e $MYVIMRC<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>z :RgRaw -g % ' '<CR>
nnoremap <leader>t :BTags<CR>
nnoremap <leader>T :Tags<CR>
nnoremap <leader>C :History:<CR>
nnoremap <C-f> :NERDTreeFind<CR>
vnoremap <C-C> "+y :exec "echo 'copied to clipboard'"<CR>h
nmap <leader>R gg=G<C-o><C-o>
" nmap =j :%!python -m json.tool<CR>

" ### coc.nvim START ###
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" Hover
nmap <silent> <leader>? :call CocActionAsync('doHover')<CR>

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
nmap <silent> <leader>F :Format<CR>

" Mappings for CoCList
nnoremap <silent><nowait> <leader>cl :<C-u>CocList<CR>
nnoremap <silent><nowait> <leader>cd :<C-u>CocList diagnostics<CR>
nnoremap <silent><nowait> <leader>ce :<C-u>CocList extensions<CR>
nnoremap <silent><nowait> <leader>cc :<C-u>CocList commands<CR>
nnoremap <silent><nowait> <leader>co :<C-u>CocList outline<CR>
nnoremap <silent><nowait> <leader>cs :<C-u>CocList -I symbols<CR>
nnoremap <silent><nowait> <leader>cj :<C-u>CocNext<CR>
nnoremap <silent><nowait> <leader>ck :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <leader>cr :<C-u>CocListResume<CR>

" class/func text objects
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" ### coc.nvim END ###

" Surround like delete/change surrounding function calls
nmap <silent> dsf ds)db
nnoremap <silent> csf [(cb

" change word & repeat with .
nnoremap c* *Ncgn

" git
nnoremap <leader>ge :vsp<CR>:Gedit master:%
vnoremap <leader>gg :GBrowse<CR>

augroup vimrc
  autocmd!
  autocmd FileType javascript,yaml,json,markdown,terraform,tf,html,css,dosini,vue setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType go setlocal noexpandtab
  autocmd FileType python setlocal foldmethod=indent
  autocmd BufNewFile,BufRead */.kube/config set filetype=yaml
  autocmd InsertEnter,InsertLeave * set cul!
augroup END
