"============
"color
"============
colorscheme tokyonight


"============
"tabs/buffers
"============
nnoremap <silent><LEADER>n :tabe<CR>
nnoremap <silent><LEADER>] :+tabnext<CR>
nnoremap <silent><LEADER>[ :-tabnext<CR>
nnoremap <silent><LEADER>= :BufferLineCycleNext<CR>
nnoremap <silent><LEADER>- :BufferLineCyclePrev<CR>
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
"nnoremap <LEADER>/ :FZF<CR>
nnoremap <LEADER>/f <cmd>Telescope find_files<cr>
nnoremap <LEADER>g <cmd>Telescope live_grep<cr>
nnoremap <LEADER>/b <cmd>Telescope buffers<cr>
nnoremap <LEADER>/h <cmd>Telescope help_tags<cr>



"============
"symbols outline
"============
noremap <LEADER>v :SymbolsOutline<CR>



"============
"Neotree
"============
nnoremap <LEADER>t :Neotree reveal toggle<CR>




"==========
"nerdcommenter
"=============
"
let g:NERDCreateDefaultMappings = 0
vnoremap <C-_> :call nerdcommenter#Comment("x", "toggle")<CR>
nnoremap <C-_> :call nerdcommenter#Comment(0, "toggle")<CR>









