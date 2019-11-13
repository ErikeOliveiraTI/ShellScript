call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'powerline/fonts'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()


"configuração de set
set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set shiftwidth=4

"Atalho de leader
let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>

"Configuração de Plugins

"Configuração de cor
colorscheme gruvbox
set background=dark

"Configurações de NERDTree
nnoremap <leader>q :NERDTreeToggle<cr>

"Configurações de deoplete
let g:deoplete#enable_at_startup = 1

"Configurações de Themes
let g:airline_theme='simple'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'ctrlp.vim'

"Configurações ultisnips
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
