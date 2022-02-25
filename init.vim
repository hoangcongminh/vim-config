  " / ____/___  ____  ____ _   /  |/  (_)___  / /_ 
 " / /   / __ \/ __ \/ __ `williamboman/nvim-lsp-installer/  / /|_/ / / __ \/ __ \
" / /___/ /_/ / / / / /_/ /  / /  / / / / / / / / /
" \____/\____/_/ /_/\__, /  /_/  /_/_/_/ /_/_/ /_/ 
   "               /____/                          

" => VIMPLUG <=
call plug#begin('C:\Users\congm\AppData\Local\nvim\plugged')
" Syntax Highlight
Plug 'sheerun/vim-polyglot'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'p00f/nvim-ts-rainbow'
" FloatTerm
Plug 'akinsho/toggleterm.nvim'
" File and folder management
Plug 'kyazdani42/nvim-tree.lua'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'natebosch/dartlang-snippets'
" Language support
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Dart
Plug 'dart-lang/dart-vim-plugin'
" Color Scheme 
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'EdenEast/nightfox.nvim'
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

call plug#end()

" always show the signcolumn
autocmd BufRead,BufNewFile * setlocal signcolumn=yes
" remove the color from the signColumn
autocmd BufRead,BufNewFile * highlight clear SignColumn

" => LUA MODULE <=
luafile C:\Users\congm\AppData\Local\nvim\keymaps.lua
luafile C:\Users\congm\AppData\Local\nvim\settings.lua
luafile C:\Users\congm\AppData\Local\nvim\toggleterm.lua
luafile C:\Users\congm\AppData\Local\nvim\keymaps.lua
luafile C:\Users\congm\AppData\Local\nvim\gitsigns.lua
luafile C:\Users\congm\AppData\Local\nvim\treesitter.lua
luafile C:\Users\congm\AppData\Local\nvim\lualine.lua
luafile C:\Users\congm\AppData\Local\nvim\barbar.lua
luafile C:\Users\congm\AppData\Local\nvim\nvimtree.lua

" => VIM MODULE <=
so C:\Users\congm\AppData\Local\nvim\color-scheme.vim
so C:\Users\congm\AppData\Local\nvim\coc-config.vim
