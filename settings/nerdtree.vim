" F5 to toggle Nerdtree
map <silent> <F5> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dev-icons settings                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:webdevicons_enable_nerdtree=1
let g:NERDTreeShowHidden=0
" Set encoding to UTF-8 to show glyphs
set encoding=UTF-8
" Enable vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 0
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerdtree syntax highlight                                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight full name (Not only icons)
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeLimitedSyntax = 1

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
