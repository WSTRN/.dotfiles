


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
snoremap k k
snoremap i i
noremap I 5k
noremap K 5j
noremap h e
noremap H E
map s <nop>
map S <nop>
"map t <nop>
map R :source $MYVIMRC<CR>
nmap <C-s> :w<CR>

"============
"split screen
"============
noremap sl :set splitright<CR>:vsplit<CR>
noremap sj :set nosplitright<CR>:vsplit<CR>
noremap sk :set splitbelow<CR>:split<CR>
noremap si :set nosplitbelow<CR>:split<CR>
noremap sh <C-w>t<C-w>H
noremap sv <C-w>t<C-w>K
noremap <LEADER>l <C-w>l
noremap <LEADER>j <C-w>h
noremap <LEADER>k <C-w>j
noremap <LEADER>i <C-w>k
noremap <C-left> :vertical resize-5<CR>
noremap <C-right> :vertical resize+5<CR>
noremap <C-up> :res +5<CR>
noremap <C-down> :res -5<CR>


"============
"tabview
"============
nnoremap <LEADER>n :tabe<CR>
nnoremap <LEADER>= :+tabnext<CR>
nnoremap <LEADER>- :-tabnext<CR>
nnoremap <LEADER>1 1gt
nnoremap <LEADER>2 2gt
nnoremap <LEADER>3 3gt
nnoremap <LEADER>4 4gt
nnoremap <LEADER>5 5gt
nnoremap <LEADER>6 6gt
nnoremap <LEADER>7 7gt
nnoremap <LEADER>8 8gt
nnoremap <LEADER>9 9gt
nnoremap <LEADER>0 :tablast<CR>


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
nnoremap <LEADER>/b <cmd>Telescope buffers theme=dropdown<cr>
nnoremap <LEADER>/h <cmd>Telescope help_tags theme=dropdown<cr>


"============
"clang-format
"============
"nmap <leader>f :ClangFormat<CR>
"xmap <leader>f :ClangFormat<CR>


"============
"vista
"============
noremap <LEADER>v :Vista!!<CR>
"noremap <c-t> :silent! Vista finder coc<CR>



"============
"NvimTreeToggle
"============
nnoremap <LEADER>t :NvimTreeToggle<CR>


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
Plug 'kyazdani42/nvim-tree.lua'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'



Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'honza/vim-snippets'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  "highlight language
Plug 'rhysd/vim-clang-format'
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
 \'    \__\/         \__\/         \__\/           ~~~~                   \__\/'    
 \]
autocmd User Startified for key in ['b', 's', 't', 'v', 'i' ] |     
	\ execute 'nunmap <buffer>' key | endfor


" ===
" === clang-format
" ===
let g:clang_format#command = "/usr/bin/clang-format-12"
let g:clang_format#style_options = "GNU"
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "BreakBeforeBraces" : "Stroustrup"}



:luafile ~/.config/nvim/lua/init.lua
lua << EOF

EOF





