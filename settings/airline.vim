"Airline theme
let g:airline_theme='base16_gruvbox_dark_medium'

" Extensions
" Tabline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'default'
let g:ariline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_close_button = 0

" Git branch settings
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#displayed_head_limit = 10
let g:airline#estensions#branch#format = 2

" Disable Vim-fugitive
let g:airline#extensions#fugitiveline#enabled = 0

" General settings
let g:airline_base16_improved_contrast = 1
let g:airline_powerline_fonts = 1
let g:airline_stl_path_style = 'short'
"let g:airline_section_warning = ''
let g:airline_section_error = ''

" Ignore things like --INSERT--
set noshowmode
" Always show tabs
set showtabline=2
" Symbols for airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' c-'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' r-'
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.dirty=''
let g:airline_symbols.notexists = 'Ɇ'
