" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Always display the status line, even if only one window is displayed
set laststatus=2

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Detect changes from other programs
set autoread

"------------------------------------------------------------
" Indentation options

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set tabstop=4 " For Makefiles and other files that use normal tabs
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
"set shiftwidth=4
"set tabstop=4
"set smarttab

" Wrapping will show up here too
set wrap
set linebreak

" ---------------------------------------------------------------
" Encodings

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

"
" Plugins
"

call plug#begin('~/.local/share/nvim/site/plug')

Plug 'drewtempelmeyer/palenight.vim', {'commit': '847fcf5b1de2a1f9c28fdcc369d009996c6bf633'}
Plug 'vim-airline/vim-airline', {'tag': 'v0.11'}

call plug#end()

"------------------------------------------------------------
"
" Get myself a color scheme
set background=dark
colorscheme palenight

" Turn on spellcheck by default
set spell spelllang=en_us

" Apparently, modelines can be security problems.  I'll turn them off until I
" need them.
set modelines=0

"set g:GuiFont="Fira Mono for Powerline:h12"

"------------------------------------------------------------
" Language-specific

" Latex
let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'jobs',
    \ 'background' : 1,
    \ 'build_dir' : 'vimtex_build',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-pdf',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
\}

let g:vimtex_view_general_viewer = '/Users/tim/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-rg @line @pdf @tex'

"-------------------------------------------------------------
" Tim's weird keymaps

iabb mbf \mathbf{


"
" Plugin settings
"
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
