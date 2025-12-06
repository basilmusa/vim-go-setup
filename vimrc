" ===========================
"   GO DEVELOPMENT VIM SETUP
" ===========================

" ---------- Plugin manager ----------
call plug#begin('~/.vim/plugged')

" Go IDE plugin (core)
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Optional: Auto-completion engine for LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File Tree Sidebar
Plug 'preservim/nerdtree'

" Status bar (beautiful, informative UI)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy finder for files/buffers/symbols
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


call plug#end()

" ---------- Basic Editor Settings ----------
syntax on
filetype plugin indent on
set number                     " show line numbers
set tabstop=4                  " Go default
set shiftwidth=4
set expandtab                  " converts tab to spaces
set smartindent                " auto-indenting

" ---------- vim-go Configuration ----------
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_fmt_command = "goimports"   " auto add imports

" Format on save
autocmd BufWritePre *.go :silent! GoFmt

" ---------- coc.nvim (Autocomplete) ----------
let g:coc_global_extensions = ['coc-go']

" ---------- Keybindings ----------
let mapleader=","                " press , + key

" Run file: ,r
autocmd FileType go nmap <leader>r :GoRun<CR>

" Build: ,b
autocmd FileType go nmap <leader>b :GoBuild<CR>

" Test: ,t
autocmd FileType go nmap <leader>t :GoTest<CR>

" Go to definition: gd
nmap gd <Plug>(go-def)

" Show documentation: K
nmap K <Plug>(go-doc)

" ---------- UI ENHANCEMENTS ----------

" NERDTree
nnoremap <leader>e :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree | wincmd p

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'

" FZF
nnoremap <C-p> :Files<CR>
nnoremap <leader>f :Rg<CR>
nnoremap <leader>b :Buffers<CR>

