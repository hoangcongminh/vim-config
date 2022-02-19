" open NERDTree on startup
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'NERDTree' argv()[0] | endif

let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrows=1
let g:NERDTreeStatusline='%#NonText#'
let g:nerdtree_sync_cursorline=1
let g:NERDTreeHighlightCursorline=1
let g:NERDTreeGitStatusWithFlags=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeAutoDeleteBuffer=1

let g:NERDTreeGitStatusUseNerdFonts = 1

nnoremap <leader>b : NERDTreeToggle<CR>
nnoremap <leader>bf : NERDTreeFind<CR>
