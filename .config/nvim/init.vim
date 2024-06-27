


"============
"setting
"============
set number
syntax on
set wildmenu
set hlsearch 
exec "nohlsearch"
set ignorecase
set cursorline
set scrolloff=5
set showcmd
set wrap
set nocompatible
set mouse=a
set termguicolors
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
au BufReadPost * if line("'\'") <= line("$") | exe "normal! g'\"" | endif
set ts=4   ""fix clang-format
"set expandtab
set sw=4
set hidden
set updatetime=100
set shortmess+=c
set tm=400


"============
"key map
"============
let mapleader=" "
noremap e i
noremap E I
noremap i k
noremap k j
noremap j h
noremap J H
noremap I 5k
noremap K 5j
noremap h e
noremap H E
map s <nop>
map S <nop>
snoremap k k
snoremap i i
snoremap s s
"map t <nop>
map R :source $MYVIMRC<CR>
nmap <C-s> :w<CR>

"============
"split screen
"============
nnoremap sl :set splitright<CR>:vsplit<CR>
nnoremap sj :set nosplitright<CR>:vsplit<CR>
nnoremap sk :set splitbelow<CR>:split<CR>
nnoremap si :set nosplitbelow<CR>:split<CR>
nnoremap sh <C-w>t<C-w>H
nnoremap sv <C-w>t<C-w>K
noremap <LEADER>l <C-w>l
noremap <LEADER>j <C-w>h
noremap <LEADER>k <C-w>j
noremap <LEADER>i <C-w>k
noremap <C-left> :vertical resize-5<CR>
noremap <C-right> :vertical resize+5<CR>
noremap <C-up> :res +5<CR>
noremap <C-down> :res -5<CR>
" inoremap <C-i> <up>
" inoremap <C-k> <down>
" inoremap <C-j> <left>
" inoremap <C-l> <right>
"======================
"find help
"======================
nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','lua','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


lua require('plugins')
lua require('keymaps')
lua << EOF
if vim.g.vscode then
	require("scrollbar").setup({ show = false })
	require("lualine").setup({
		sections = { lualine_a = {}, lualine_b = {}, lualine_c = {}, lualine_x = {}, lualine_y = {}, lualine_z = {} }
	})
end
EOF
"=== === === === === === === === === === === === === === === === === === === === === === === === === === === === === 


