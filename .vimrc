"Must be at the top of the file. Says use vim mode instead of vi:
set nocompatible

set encoding=utf8

"Relative numbers, but show the current line number:
set relativenumber
set number

"More space around numbers:
set numberwidth=2

"Backspaces in insert mode:
set backspace=eol,start,indent

"Prevent blinking cursor:
set gcr=a:blinkon0

"Turn off sounds:
set visualbell

"Reload changed files:
set autoread

"Allows background buffers:
set hidden

"Enable syntax highlighting:
syntax on

"Change mapleader to comma:
let mapleader=","

"Disable swap files (use git instead):
set nobackup
set nowb
set noswapfile

"Set Indentation:
set expandtab
set smarttab
set autoindent
set smartindent
set shiftwidth=2
set softtabstop=2
set tabstop=2

filetype plugin indent on

set listchars=tab:>.,trail:.,extends:#,nbsp:.

"Prevent line wrapping:
set nowrap

"Set folding:
set foldmethod=indent
set foldnestmax=3
set nofoldenable

"Reload .vimrc:
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"Set scrolling:
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

"Set Searching:
set incsearch
set hlsearch
set ignorecase
set smartcase

"Set Color Scheme:
try
  "Tomorrow-Night
  "Tomorrow-Night-Eighties
  "spring-night
  "colorscheme sorcerer
  "colorscheme codeschool
  colorscheme bubblegum-256-dark
catch
  colorscheme elflord
endtry

"Remap ';' to ':' so I do not have to use SHIFT:
nnoremap ; :

"Disable Arrow Keys:
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Clear Searches:
nmap <silent> ,/ :nohlsearch<CR>

"Map ESC:
imap jk <Esc>
imap kj <Esc>

"Switching bewteen windows:
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Display command in bottom bar:
set showcmd

"Highlight the present line number:
set cursorline

"Command Menu Autocomplete:
set wildmenu

"Redraw the screen only when necessary:
set lazyredraw

"Highlight matching parenthesis and brackets:
set showmatch

"Row/Column ruler:
set ruler

"Special character pattern matching:
set magic

"Column after 80 characters:
set colorcolumn=80

"Highlight Spaces:
set list

"Disable beep on error:
set noerrorbells

"Set the title of the window to the current file being edited:
set title

"Increases the height of the commandline:
set cmdheight=2

"Keep column consistent when moving lines:
set nostartofline
