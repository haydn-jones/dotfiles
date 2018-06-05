""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"				  Colorscheme
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox			"colorscheme
set termguicolors                       "actually show the right colors
set background=dark                     "enable dark background
let g:gruvbox_contrast_dark = 'hard'    "strong contrast
let g:airline_theme='gruvbox'           "badwolf airline theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"				  Misc
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable 			        "enable syntax highlighting
set nocompatible                        " be iMproved, required
set expandtab			        "expand tabs out to spaces
set number 				"show line numbers
set showcmd				"show command in bottom bar
set cursorline				"show underline on cursor
filetype plugin indent on		"filetype detection and indetion
set wildmenu				"command completion
set showmatch                           "bracket highlighting
set undodir=~/.vim/.undo//              "undo dir
set backupdir=~/.vim/.backup//          "backup dir
set directory=~/.vim/.swp//             "swap dir
set encoding=utf-8                      "UTF-8 encoding
"jk now maps to escape
inoremap jk <esc>
" F5 trims all trailing whitespace
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" F7 Fixes indentation for whole file
map <F7> mzgg=G`z
" Clear vims highlight search buffer with ,/
nmap <silent> ,/ :let@/=""<CR>
" Disables visual mode on mouse press
set mouse-=a
" Aligns case statement with switch to save horizontal space
set cinoptions=:0
" Sets f to toggle fold
nmap f za<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"				  Vim Plug
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" - Install using:
"   curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'vim-airline/vim-airline-themes'
Plug 'dhruvasagar/vim-table-mode'
Plug 'mhinz/vim-startify'
Plug 'xolox/vim-notes'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'xolox/vim-misc'
" Initialize plugin system
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                                Nerd Tree
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerd tree toggle mapped to control-n
map <C-n> :NERDTreeToggle<CR>
" If nerd tree is the last window open close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                                Deoplete
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:deoplete#enable_at_startup = 1
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                                Syntastic
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_warning_symbol = '!!'
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_checkers = ['gcc']
"let g:syntastic_c_gcc_args = '-Wall -Wmain'
let g:syntastic_python_checkers = []
let g:syntastic_python_pylint_args = ['--errors-only']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                                Vim-Notes
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:let g:notes_directories = ['~/haydnjonest@gmail.com/notes']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"                                Startify
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_session_dir = '~/.vim/session'
let g:startify_bookmarks = ['~/.zshrc', '~/.vimrc']

