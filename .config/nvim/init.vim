
" Of course
set nocompatible

" Turn things on.  We need to run `filetype off` first because vim defaults
" to `filetype on`, and unless we toggle it, our custom filetype detections
" won't be run.
filetype off

" Setup FZF
set rtp+=~/.fzf
set rtp+=/usr/local/opt/fzf

" directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'aly006/a.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'
Plug 'xolox/vim-misc'
Plug 'christoomey/vim-tmux-navigator'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'wincent/terminus'
Plug 'altercation/vim-colors-solarized'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug '907th/vim-auto-save'


" All of your Plugins must be added before the following line
call plug#end()


filetype indent plugin on
syntax enable

let g:auto_save = 1

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

"set background=dark
set background=light
set t_Co=256  " 256 term coloring
let g:solarized_termtrans = 1
let g:solarized_termcolors=16
"let g:solarized_visibility='high'
"let g:solarized_contrast = 'high'

" start deoplete at startup
let g:deoplete#enable_at_startup = 1
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

colorscheme solarized

" Display.
set ruler           " show cursor position
set showcmd         " show normal mode commands as they are entered
set showmode        " show editing mode in status (-- INSERT --)
set showmatch       " flash matching delimiters

" Scrolling.
"set scrolljump=5    " scroll five lines at a time vertically
set sidescroll=10   " minumum columns to scroll horizontally
set scrolloff=8    " start scrolling 15 from bott

" Indent.
set autoindent      " carry indent over to new lines

" Other.
set noerrorbells      " no bells in terminal

set backspace=indent,eol,start  " backspace over everything

set undolevels=1000   " number of undos stored
set viminfo='50,"50   " '=marks for x files, "=registers for x files

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
 \ if line("'\"") > 0 && line("'\"") <= line("$") |
 \   exe "normal! g`\"" |
 \ endif

set modelines=0       " modelines are bad for your health

" Prevent the cursor from changing the current column when jumping to other lines within the window
set nosol

" recursively search parent directories until tag file found
set tags=tags;/
"set iskeyword=@,45,48-57,58,_,192-255,#

"set background=dark

" Set Line numbers on
set number
set relativenumber

" Move to next displayed line instead of actual line
nnoremap j gj
nnoremap k gk

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au CursorHold * checktime 

" Turn off swap files
set noswapfile
set nobackup
set nowb

" Keep undo history across sessions, by storing in file.
"set undodir=~/.vim/backups
"set undofile

" [FB-ONLY]
" Can't set SELinux security context on nfs, which FB homedirs use, so
" override the default location
let undo_base_dir = $HOME . '/local/.vim/'
for directory in ["backup", "swap", "undo"]
  silent! call mkdir(undo_base_dir . directory, "p")
endfor
let &backupdir = undo_base_dir . '/backup//'
let &directory = undo_base_dir . '/swap//'
let &undodir = undo_base_dir . '/undo//'
" Keep undo history across sessions, by storing in file. This never works
set undofile

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
"let mapleader = ","
"let g:mapleader = ","
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" open command history by default. qq to quit anything
map : q:i
noremap qq :q<CR>

" highlight current line curosr is on
set cursorline

" ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Line text past 80 char
set textwidth=79
"set colorcolumn=+1 " relative (to textwidth) columns to highlight "

set colorcolumn=80 " absolute columns to highlight "

" find ctermbg colors here: http://cl.pocari.org/images/vim-256color.png
":highlight ColorColumn guibg=#268bd2 ctermbg=23

" Tabs Settings
set shiftwidth=2    " two spaces per indent
set tabstop=2       " number of spaces per tab in display
set softtabstop=2   " number of spaces per tab when inserting
set expandtab       " substitute spaces for tabs

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Don't redraw while executing macros (good performance config)
set lazyredraw 
set ttyfast

" Don't get rid of buffers when changing files, used with minibufexpl 
set hidden

" Prompt before closing a buffer if unsaved work
set confirm

" Autocompletion for buffer usingn tab
set wildmenu
set wildmode=longest:full,full

" Buffer settings, use gb to jump to buffer list
noremap gb :ls<CR>:b<Space>

" buffer settings, next previous delete
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr> 

" Toggle NerdTree on and off
nmap <silent> <F3> :NERDTreeTabsToggle<CR>
map <C-n> :NERDTreeTabsToggle<CR>
let NERDTreeShowHidden=1

" Get Smooth Scrolling to work - requires vim-smooth-scroll plugin
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 40, 4)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 40, 4)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 40, 8)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 40, 8)<CR>

" indentline stuff - requires indentline plugin
"let g:indentLine_color_term = 239
let g:indentLine_color_term = 250 " for solarized light
let g:indentLine_char = '┆'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Show buffer numbers in airline
let g:airline#extensions#tabline#buffer_nr_show = 1

" Airline theme
let g:airline_theme='solarized'

" disable fileencoding, fileformat
"let g:airline_section_y=''
" disable syntastic, whitespace
let g:airline_section_warning=''
" disable bufferline/filename
"let g:airline_section_c=''


" vim - notes directory
let g:notes_directories = ['~/notes']
let g:notes_conceal_url = 0
let g:notes_conceal_bold = 0
let g:notes_conceal_italic = 0
let g:notes_smart_quotes = 0
let g:notes_unicode_enabled = 0
let g:notes_conceal_code = 0
"highlight link notesSingleQuoted Constant

" disable insert cursor change from Terminus Plugin
let g:TerminusCursorShape = 0

" toggle tagbar plugin
"nmap <leader>g :TagbarToggle<CR>
"let g:tagbar_left = 1
"let g:tagbar_width = 50
"let g:tagbar_foldlevel = 1

" FZF - overwrites command-t for now
"let $FZF_DEFAULT_COMMAND= "ag -g ''"
nmap <leader>t :FZF<CR>
nmap <leader>a :Tags<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>fq :q!<CR>
nmap <leader>s :A<CR>

" Ctrlp
"nmap <leader>t :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>r :CtrlPMRU<CR>
let g:ctrlp_max_files = 300000
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:25,results:25'
let g:ctrlp_cmd='CtrlP :pwd'
let g:ctrlp_lazy_update = 210

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Configuration for ~/.vimrc:
" Bind <leader>y to forward last-yanked text to Clipper
"nnoremap <leader>y :call system('nc localhost 8377', @0)<CR>
noremap <leader>y "*yy

" Returns true if paste mode is enabled
function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  en
  return ''
endfunction

augroup reload_vimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END


" Require tpope/vim-repeat to enable dot repeat support
" Jump to anywhere with only `s{char}{target}`
" `s<CR>` repeat last find motion.
nmap s <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1


" gitgutter git diff config
let g:gitgutter_diff_args = 'HEAD~1'
let g:gitgutter_max_signs = 2048

let g:tmux_navigator_save_on_switch=2
