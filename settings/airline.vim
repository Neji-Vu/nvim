"Airline theme
let g:airline_theme='base16_gruvbox_dark_pale'

" Extensions
" Enable enhanced tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'default'          
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#tab_nr_show = 1
"let g:airline#extensions#tabline#show_nr_type = 1
let g:ariline#extensions#tabline#fnamemod = ':t'

"let g:airline#extensions#whitespace#enabled = 0              "Disable warning whitespace

" General setting
let g:airline_base16_improved_contrast = 1
let g:airline_powerline_fonts = 1

" Ignore things like --INSERT--
set noshowmode
" Always show tabs
set showtabline=2
" symbols for airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' col-'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.dirty='⚡'

