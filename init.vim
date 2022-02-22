  " / ____/___  ____  ____ _   /  |/  (_)___  / /_ 
 " / /   / __ \/ __ \/ __ `/  / /|_/ / / __ \/ __ \
" / /___/ /_/ / / / / /_/ /  / /  / / / / / / / / /
" \____/\____/_/ /_/\__, /  /_/  /_/_/_/ /_/_/ /_/ 
   "               /____/                          

" => VIMPLUG <=
call plug#begin('C:\Users\congm\AppData\Local\nvim\plugged')
" Syntax Highlight
Plug 'sheerun/vim-polyglot'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" FloatTerm
Plug 'akinsho/toggleterm.nvim'
" File and folder management
Plug 'kyazdani42/nvim-tree.lua'
" Telescope
Plug 'nvim-telescope/telescope.nvim'
" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'natebosch/dartlang-snippets'
" Language support
Plug 'tpope/vim-projectionist'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
" Dart
Plug 'dart-lang/dart-vim-plugin'
" Color Scheme 
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
Plug 'Mofiqul/vscode.nvim'
Plug 'eddyekofo94/gruvbox-flat.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
" Git
Plug 'tpope/vim-fugitive'
" GitSigns
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
" statusline and tabline
Plug 'nvim-lualine/lualine.nvim'
Plug 'romgrk/barbar.nvim'
" Comment
Plug 'tpope/vim-commentary'
" Copilot
Plug 'github/copilot.vim'

"Other
Plug 'tpope/vim-surround'
Plug 'frazrepo/vim-rainbow'

call plug#end()

" => GENERAL SETTINGS <=
let mapleader=" "

" set shell=pwsh
" set shellcmdflag=-command
" set shellquote=\"
" set shellxquote=

set noshowmode
set termguicolors
set number
set relativenumber

set smartindent

set scrolloff=8
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround

set noswapfile
set wrap
set mouse=a "enable mouse for all mode

" Map Emacs like movement in Insert mode
inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^

" Go to next quickfix(error)
nnoremap <C-k> :cp<CR>
nnoremap <C-j> :cn<CR>
nnoremap <F2> :tabn<CR>

noremap <leader>/ :Commentary<cr>

nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>

" => ANOTHER <=
" Disable Ctrl-Z(suspend not work in windows)
let s:is_win = has('win32') || has('win64')
if s:is_win
    " ... other Windows specific settings

    nmap <C-z> <Nop>
endif

" => LUA MODULE <=
luafile C:\Users\congm\AppData\Local\nvim\toggleterm.lua
luafile C:\Users\congm\AppData\Local\nvim\telescope.lua
luafile C:\Users\congm\AppData\Local\nvim\gitsigns.lua
luafile C:\Users\congm\AppData\Local\nvim\treesitter.lua
luafile C:\Users\congm\AppData\Local\nvim\lualine.lua
luafile C:\Users\congm\AppData\Local\nvim\barbar.lua
luafile C:\Users\congm\AppData\Local\nvim\nvimtree.lua

" => VIM MODULE <=
so C:\Users\congm\AppData\Local\nvim\color-scheme.vim
so C:\Users\congm\AppData\Local\nvim\coc-config.vim
