set nocompatible "Must be at the top - Vundle
filetype off "Must be at the top - Vundle

"Vundle Config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'baskerville/bubblegum'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'rhysd/vim-color-spring-night'
Plugin 'adlawson/vim-sorcerer'
Plugin 'antlypls/vim-colors-codeschool'

"Plugins have to be added before these two lines:
call vundle#end()            " required
filetype plugin indent on    " required
" End Vundle Config

set encoding=utf8
set relativenumber " relative line numbers
set number " show current line number
set numberwidth=2 " More space around numbers:
set backspace=eol,start,indent " Backspaces in insert mode:
set gcr=a:blinkon0 " Prevent blinking cursor:
set visualbell " Turn off sounds:
set autoread " Reload changed files:
set hidden " Allows background buffers:
set nobackup " Disable swap files (use git instead):
set nowb
set noswapfile
set expandtab
set smarttab
set autoindent
set smartindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set nowrap " Prevent line wrapping:
set foldmethod=indent " set folding:
set foldnestmax=3 " set folding:
set nofoldenable " set folding:
set scrolloff=8 " set scrolling:
set sidescrolloff=15 " set scrolling:
set sidescroll=1 " set scrolling:
set incsearch " searching:
set hlsearch " searching:
set ignorecase " searching:
set smartcase " searching:
set showcmd " Display command in bottom bar:
set cursorline " Highlight the present line number:
set wildmenu " Command Menu Autocomplete:
set lazyredraw " Redraw the screen only when necessary:
set showmatch " Highlight matching parenthesis and brackets:
set ruler " Row/Column ruler:
set magic " Special character pattern matching:
set colorcolumn=80 " Column after 80 characters:
set list " Highlight Spaces:
set noerrorbells " Disable beep on error:
set title " Set the title of the window to the current file being edited:
set cmdheight=2 " Increases the height of the commandline:
set nostartofline " Keep column consistent when moving lines:

syntax on " Enable syntax highlighting:

"Change mapleader to comma:
let mapleader=","

nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <silent> <leader>ev :e $MYVIMRC<CR> " edit .vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR> " reload .vimrc:

nnoremap ; : " Remap ';' to ':' so I do not have to use SHIFT:

" Disable Arrow Keys:
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Clear Searches:
nmap <silent> ,/ :nohlsearch<CR>

"Map ESC:
imap jk <Esc>
imap kj <Esc>

nmap k gk " allows moving across wrapped lines
nmap j gj " allows moving across wrapped lines

nmap 0 ^

" Switching bewteen windows:
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Move between beginning and ending keywords with %
runtime macros/matchit.vim

"Adds to end of file when searching with gf:
augroup rubypath
  autocmd!
  autocmd FileType ruby setlocal suffixesadd+=.rb
augroup END

"When windows is resized, refresh to keep balanced
autocmd VimResized * :wincmd =

"<C-w>= to re-balance after zooming:
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" Color schemes I like for easy switching:
try
  " colorscheme Tomorrow-Night
  " colorscheme Tomorrow-Night-Eighties
  " colorscheme spring-night
  " colorscheme sorcerer
  " colorscheme codeschool
  " colorscheme bubblegum-256-dark
  colorscheme jellybeans
catch
  colorscheme elflord " allow to work before plugins have been installed
endtry

"RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

"Repeat.vim:
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
