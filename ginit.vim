"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  __  __        _   _ _   _   ____ _   _  ___  _   _ _____                 "
" |  \/  |  /\  | \ | | |_| | |  __| | | |/ _ \| \ | | ____|                "
" | |\/| | /  \ |  \| |  _  | | |  | | | | | | |  \| | |  _                 "
" | |  | |/ __ \| |\  | | | | | |__| |_| | |_| | |\  | |_| |                "
" |_|  |_|_/  \_|_| \_|_| |_| |____|_____|\___/|_| \_|_____|                "
"                                                                           "
" vim customized by Manh Cuong                                              "
" Fb: http://facebook.com/ManhCuonq.Info                                    "
"                                                                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VimPlug for managing PlugIns                                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/Appdata/Local/nvim/plugged')

" {{ Theme }}
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" {{ Source code version control }}
Plug 'tpope/vim-fugitive'

"{{ Tree-sitter }}
Plug 'nvim-treesitter/nvim-treesitter',{'do': ':TSUpdate'}

" {{ File browser - Nerd tree }}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" {{ Terminal }}
Plug 'voldikss/vim-floaterm'

" {{ Auto pairs }}
Plug 'jiangmiao/auto-pairs'

" {{ Code intellisense }}
Plug 'neovim/nvim-lspconfig'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings                                                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable GUI tabline and use TUI tabline
GuiTabline 0
" Set line space of code
set linespace=1
" Add numbers to each line on the left-hand side
set number relativenumber
" Highlight cursor line underneath the cursor horizontally
set cursorline
"""" Tab settings according to filetype """"
" Set shift width 4 spaces
set shiftwidth=4
" Set tab width 4 columns
set tabstop=4
" Use space charaters instead of tabs
set expandtab
" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype
filetype plugin indent on
filetype indent on
" Enable mouse usage (all modes)
set mouse-=a
" Do not wrap lines. Allow long lines to extend as far as the line gone
"set nowrap
" Enable syntax highlight
syntax on
" Ignore capital letters during search
set ignorecase
" Override the ignore case option if searching for capital letters
" This will allow to search specifically for capital letters
set smartcase
" Show partial command you type in the last line of the screen.
set showcmd
" Enable auto completion menu after pressing TAB
set wildmenu
" Make wildmenu behave like similar to Bash completion
set wildmode=list:longest
" There are certain files that you would never want to edit with Vim
" Wildmenu will ignore files with these extensions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlxs
" Font for Vim
set guifont=Fira\ Code\ Retina:h11:cANSI

" Enable copying content from vim to clipboard
if has('win32')
    set clipboard=unnamed
else
    set clipboard=unnamedplus
endif

" Place the text on the system clipboard to the cursor position
inoremap <silent>  <S-Insert>  <C-R>+

" Close the curent bufer and move to the previous one
" This replicates the idea of closing a tab
nnoremap <leader>bq :bp <BAR> bd #<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trim trailing whitespace from all lines in a file                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Explain: %s/\s\+$//e
" %s to run :subtitute over the range %, which is the entire buffer
" \s to match all whitespace characters
" \+ to match 1 or more of them
" $ to anchor at the end of the line
" The e flag to not give an error if there is no match (i.e. the file is
" already without trailing whitespace)
"
" Create function to prevent side-effects:
" 1. It moves the cursor to the last match
" 2. It It adds the commnad to the history and search history
" 3. It resets the last search term
" Mapping to \w
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
nnoremap <silent> <Leader>w :call TrimWhitespace()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto reload content changed outside                                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger when cursor stops moving
au CursorHold,CursorHoldI * checktime
" Trigger on buffer change or terminal focus
au FocusGained,BufEnter * checktime

autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
        \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Theme                                                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Theme
syntax enable
set background=dark
let g:gruvbox_contrast_dark = 'hard'

"{{ Gruvbox }}
colorscheme gruvbox

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extended settings                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let nvim_settings_dir = '~\AppData\Local\nvim\settings\'
execute 'source '.nvim_settings_dir.'airline.vim'
execute 'source '.nvim_settings_dir.'nerdtree.vim'
execute 'source '.nvim_settings_dir.'floaterm.vim'
execute 'source '.nvim_settings_dir.'lspconfig.vim'
