


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


"============
"tabs/buffers
"============
nnoremap <LEADER>n :tabe<CR>
nnoremap <silent><LEADER>] :+tabnext<CR>
nnoremap <silent><LEADER>[ :-tabnext<CR>
"nnoremap <LEADER>1 1gt
"nnoremap <LEADER>2 2gt
"nnoremap <LEADER>3 3gt
"nnoremap <LEADER>4 4gt
"nnoremap <LEADER>5 5gt
"nnoremap <LEADER>6 6gt
"nnoremap <LEADER>7 7gt
"nnoremap <LEADER>8 8gt
"nnoremap <LEADER>9 9gt
"nnoremap <LEADER>0 :tablast<CR>
nnoremap <silent><LEADER>= :BufferLineMoveNext<CR>
nnoremap <silent><LEADER>- :BufferLineMovePrev<CR>
nnoremap <silent><leader>1 <cmd>lua require("bufferline").go_to_buffer(1, true)<cr>
nnoremap <silent><leader>2 <cmd>lua require("bufferline").go_to_buffer(2, true)<cr>
nnoremap <silent><leader>3 <cmd>lua require("bufferline").go_to_buffer(3, true)<cr>
nnoremap <silent><leader>4 <cmd>lua require("bufferline").go_to_buffer(4, true)<cr>
nnoremap <silent><leader>5 <cmd>lua require("bufferline").go_to_buffer(5, true)<cr>
nnoremap <silent><leader>6 <cmd>lua require("bufferline").go_to_buffer(6, true)<cr>
nnoremap <silent><leader>7 <cmd>lua require("bufferline").go_to_buffer(7, true)<cr>
nnoremap <silent><leader>8 <cmd>lua require("bufferline").go_to_buffer(8, true)<cr>
nnoremap <silent><leader>9 <cmd>lua require("bufferline").go_to_buffer(9, true)<cr>
nnoremap <silent><leader>$ <cmd>lua require("bufferline").go_to_buffer(-1, true)<cr>
nnoremap <silent><LEADER><Backspace> :BufferLinePickClose<CR>
nnoremap <silent><LEADER><Space> :BufferLinePick<CR>


"============
"Undotree
"============
nnoremap <LEADER>u :UndotreeToggle<CR>


"============
"fzf
"============
nnoremap <LEADER>/ :FZF<CR>
"nnoremap <LEADER>/f <cmd>Telescope find_files<cr>
nnoremap <LEADER>g <cmd>Telescope live_grep<cr>
nnoremap <LEADER>/b <cmd>Telescope buffers<cr>
nnoremap <LEADER>/h <cmd>Telescope help_tags<cr>



"============
"vista
"============
noremap <LEADER>v :Vista!!<CR>
"noremap <c-t> :silent! Vista finder coc<CR>



"============
"NvimTreeToggle
"============
nnoremap <LEADER>t :Neotree toggle=true<CR>


nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','lua','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"============
" Install vim-plug if not found
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
\| PlugInstall --sync | source $MYVIMRC
\| endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"============


"============
"Plug-in
"============
call plug#begin('~/.config/nvim/plugged')
"thmem
"Plug 'connorholyday/vim-snazzy'
Plug 'folke/tokyonight.nvim', { 'branch':'main' }
Plug 'feline-nvim/feline.nvim'
"Plug 'EdenEast/nightfox.nvim'
"Plug 'morhetz/gruvbox'
"Plug 'olimorris/onedarkpro.nvim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

"
Plug 'mhinz/vim-startify'
Plug 'skywind3000/vim-terminal-help' "ALT+'=' Toggle terminal
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'RRethy/vim-illuminate'  "highlight word
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'mbbill/undotree'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
    "surround
	" cs"' change surround
	" ds"  del "
	" ysiw] add ] surround
	" use S' in visual mode add ' surround
	"
""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'liuchengxu/vista.vim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'kyazdani42/nvim-web-devicons' " for file icons
"Plug 'kyazdani42/nvim-tree.lua'
Plug 'MunifTanjim/nui.nvim'
Plug 's1n7ax/nvim-window-picker'
Plug 'nvim-neo-tree/neo-tree.nvim', { 'branch': 'v2.x' }
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'



Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'honza/vim-snippets'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  "highlight language
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'
call plug#end()



"====================theme
"colorscheme snazzy
"
let g:tokyonight_style = "night"
let g:tokyonight_transparent = 1
let g:tokyonight_italic_comments =0
colorscheme tokyonight
"
"colorscheme onedarkpro
"
"color gruvbox
"
"colorscheme nightfox
"============================
"




" ===
" === Vista.vim
" ===
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']

let g:startify_custom_header = [
 \'     ___           ___           ___                                    ___'     ,
 \'    /__/\         /  /\         /  /\          ___        ___          /__/\'    ,
 \'    \  \:\       /  /:/_       /  /::\        /__/\      /  /\        |  |::\'   ,
 \'     \  \:\     /  /:/ /\     /  /:/\:\       \  \:\    /  /:/        |  |:|:\'  ,
 \' _ ___\__\:\   /  /:/ /:/_   /  /:/  \:\       \  \:\  /__/::\      __|__|:|\:\' ,
 \'/__/::::::::\ /__/:/ /:/ /\ /__/:/ \__\:\  ___  \__\:\ \__\/\:\__  /__/::::| \:\',
 \'\  \:\~~\~~\/ \  \:\/:/ /:/ \  \:\ /  /:/ /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/',
 \' \  \:\  ~~~   \  \::/ /:/   \  \:\  /:/  \  \:\|  |:|     \__\::/  \  \:\'      ,
 \'  \  \:\        \  \:\/:/     \  \:\/:/    \  \:\__|:|     /__/:/    \  \:\'     ,
 \'   \  \:\        \  \::/       \  \::/      \__\::::/      \__\/      \  \:\'    ,
 \'    \__\/         \__\/         \__\/           ~~~~                   \__\/'    ,
 \'     I really   '
 \]
autocmd User Startified for key in ['b', 's', 't', 'v', 'i' ] |     
	\ execute 'nunmap <buffer>' key | endfor



:luafile ~/.config/nvim/lua/init.lua
lua << EOF

EOF





