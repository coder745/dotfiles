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
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'tpope/vim-endwise'
Plugin 'airblade/vim-gitgutter'
" Plugin 'vim-scripts/vim-auto-save'
Plugin 'junegunn/fzf.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/tagbar'
" Plugin 'SirVer/ultisnips'
Plugin 'craigemery/vim-autotag'

" NerdTree:
Plugin 'preservim/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'ryanoasis/vim-devicons'

" Code Plugins:
Plugin 'neoclide/coc.nvim'
Plugin 'w0rp/ale'
Plugin 'sheerun/vim-polyglot'

" Colors
Plugin 'nanotech/jellybeans.vim'
Plugin 'baskerville/bubblegum'
Plugin 'rhysd/vim-color-spring-night'
Plugin 'adlawson/vim-sorcerer'
Plugin 'antlypls/vim-colors-codeschool'

" ultisnips config:
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsEditSplit="vertical"

"Plugins have to be added before these two lines:
call vundle#end()            " required
filetype plugin indent on    " required
" End Vundle Config

set rtp+=/usr/local/opt/fzf " enable fzf (must have installed via homebrew)

set encoding=utf8
set relativenumber " relative line numbers
set laststatus=2
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
set foldignore= " do not ignore any characters with fold
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
set cursorcolumn " Highlight current column
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

" Does not work for neovim:
" set noesckeys

set ttimeout
set ttimeoutlen=1

syntax on " Enable syntax highlighting

"Change mapleader to comma:
let mapleader=","

nmap <leader>n :NERDTreeFind<cr>

" Tagbar:
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" Search for tags with ctrlp:
nnoremap <leader>. :CtrlPTag<cr>

nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <silent> <leader>ev :e $MYVIMRC<CR> " edit .vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR> " reload .vimrc:
nmap <leader>f :Vexplore<cr>

"nnoremap ; : " Remap ';' to ':' so I do not have to use SHIFT:

map ; :Files<CR>

" map ; :CtrlP<CR>

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

"Map Tab to auto-complete:
" imap <Tab> <C-P>

" nmap k gk " allows moving across wrapped lines
" nmap j gj " allows moving across wrapped lines

nmap 0 ^

" Switching bewteen windows:
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Enable the matchit plugin - built in
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

" CTRLP:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 1

" git-gutter:
let g:gitgutter_terminal_reports_focus=0

" Prevent lookups with 'K'
map K <Nop>

highlight ColorColumn ctermbg=235

" NETRW:
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_altv = 1
" let g:netrw_winsize = 25

" vim-auto-save plugin config:
" let g:auto_save = 1 " enable plugin on start:
" let g:auto_save_no_updatetime = 1 " don't change 'updatetime' option
" let g:auto_save_in_insert_mode = 0 " disable auto-save with insert mode
" let g:auto_save_silent = 1 " don't display the autosave message
