let g:floaterm_position = 'topright'
let g:floaterm_width = 0.5
let g:floaterm_height = 0.5
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_wintype = 'float'
let g:floaterm_rootmarkers = ['.pro']

" Set color
hi Floaterm guibg=grey15
hi FloatermBorder guibg=black guifg=Orange
"hi FloatermNC guibg=gray

" Mapping
nnoremap <F8> :FloatermNew --position=bottomleft --height=0.8 --width=0.6 --title="Git" lazygit<CR>

nnoremap <silent> <F9> :FloatermNew powershell -nologo<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermNew powershell -nologo<CR>
nnoremap <silent> <C-F9> :FloatermKill<CR>:FloatermPrev<CR>
tnoremap <silent> <C-F9> <C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>

nnoremap <silent> <F10> :FloatermNext<CR>
tnoremap <silent> <F10> <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <C-F10> :FloatermPrev<CR>
tnoremap <silent> <C-F10> <C-\><C-n>:FloatermPrev<CR>

nnoremap <silent> <F11> :FloatermToggle<CR>
tnoremap <silent> <F11> <C-\><C-n>:FloatermToggle<CR>
nnoremap <silent> <C-F11> <C-\><C-n><C-W><Left>
tnoremap <silent> <C-F11> <C-\><C-n><C-W><Left> 

