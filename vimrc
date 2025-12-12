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

" gruvbox colorscheme
Plug 'morhetz/gruvbox'

" Status bar (beautiful, informative UI)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy finder for files/buffers/symbols
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Respect indentation for the current file
Plug 'tpope/vim-sleuth'

" Git information in airline theme
Plug 'tpope/vim-fugitive'


call plug#end()

" ---------- Basic Editor Settings ----------
syntax on
filetype plugin indent on
set number                     " show line numbers
set tabstop=4                  " Go default
set shiftwidth=4
set expandtab                  " converts tab to spaces
set smartindent                " auto-indenting
set background=dark


" Use gruvbox for colorscheme as default
colorscheme gruvbox
if exists(':AirlineTheme')
  AirlineTheme gruvbox
endif

" To keep colors during tmux sessions
set t_Co=256

" ---------- vim-go Configuration ----------
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_fmt_command = "goimports"   " auto add imports

" Format on save
autocmd BufWritePre *.go :silent! GoFmt

" ---------- coc.nvim (Autocomplete) ----------
let g:coc_global_extensions = ['coc-go']

" Use Tab to cycle through suggestions
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ "\<Tab>"
inoremap <expr><S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" Use Enter to confirm completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
      \ : "\<CR>"


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
" autocmd VimEnter * NERDTree | wincmd p
autocmd VimEnter * if argc() == 0 | NERDTree | wincmd p | endif

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'

" FZF
nnoremap <C-p> :Files<CR>
nnoremap <leader>f :Rg<CR>
nnoremap <leader>b :Buffers<CR>

