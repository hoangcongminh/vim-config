vim.cmd([[
  let mapleader=" "

  " Set powershell as the default terminal
  let &shell = has('win32') ? 'pwsh' : 'powershell'
  set shellquote= shellpipe=\| shellxquote=
  set shellcmdflag=-NoLogo\ -NoProfile\ -ExecutionPolicy\ RemoteSigned\ -Command
  set shellredir=\|\ Out-File\ -Encoding\ UTF8

  set completeopt=menu,menuone,noselect
  set signcolumn=yes
  set numberwidth=4
  set clipboard+=unnamedplus 
  set cmdheight=2 
  set noshowmode 
  set termguicolors 
  set number 
  set relativenumber 
  set smartindent 
  set smartcase 
  set ignorecase 
  set scrolloff=8 
  set sidescrolloff=8 
  set softtabstop=2 
  set shiftwidth=2 
  set shiftround 
  set cursorline 
  set noswapfile 
  set mouse=a "enable mouse for all mode

  " Disable Ctrl-Z(suspend not work in windows)
  let s:is_win = has('win32') || has('win64')
  if s:is_win
  " ... other Windows specific settings

  nmap <C-z> <Nop>
  endif
]])

vim.cmd "set signcolumn=yes"
