filetype off " required for vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-powerline.git'
Bundle 'othree/html5.vim'
Bundle 'itspriddle/vim-jquery'
Bundle 'vim-ruby/vim-ruby'
Bundle 'mattn/zencoding-vim'
Bundle 'tpope/vim-vividchalk'
Bundle 'ervandew/supertab'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-endwise'
Bundle 'jelera/vim-gummybears-colorscheme'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'wikitopian/hardmode'
Bundle 'bling/vim-airline'
Bundle 'jpalardy/vim-slime'

" enable hard mode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" toggle hard mode with \h
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

:syntax on
filetype plugin indent on
:set number
set showcmd
set nocompatible
set encoding=utf-8
set colorcolumn=85

set ruler
set showmatch
set smartcase
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right

" Who doesn't like autoindent?
set autoindent
:hi CursorLine   cterm=NONE ctermbg=green ctermfg=black guibg=green guifg=black

set cursorline

" Spaces are better than a tab character
set expandtab
set smarttab

" Add _ as a word separator
":set iskeyword-=_

" W aliases w
:command W w
set lisp

" Who wants an 8 character tab?  Not me!
set shiftwidth=2
set softtabstop=2

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" disable arrow keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" turn off swap files
set noswapfile
set nobackup
set nowb

" scroll throught autocomplete results
set wildmenu

" toggle absolute/relative line numbers
function! NumberToggle()
    if(&relativenumber == 1)
      set number
    else
      set relativenumber
    endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

nnoremap <C-t> :TagbarToggle<cr>

" Edit or view files in same directory as current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

" disable auto-formatting when pasting from
" system clipboard
nnoremap <C-a> :set invpaste paste?<CR>
set pastetoggle=<C-a>
set showmode

" load bashrc
set shellcmdflag=-ic

" Jump to start and end of line using the home row keys
noremap H ^
noremap L $

" Search and replace word under cursor (,;)
nnoremap <leader>; :%s/\<<C-r><C-w>\>//<Left>

" kill beep
set vb t_vb=".

" noh no more!
nnoremap <silent> _ :nohl<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM AUTOCMDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimrcEx
  " Clear all autocmds in the group
  autocmd!
  autocmd FileType text setlocal textwidth=78
  " Jump to last cursor position unless it's invalid or in an event handler
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  "for ruby, autoindent with two spaces, always expand tabs
  autocmd FileType ruby,haml,eruby,yaml,cucumber set ai sw=2 sts=2 et
  autocmd FileType python,javascript,coffee,sass,css,scss,html set sw=4 sts=4 et
augroup END

let g:ctrlp_map = '<c-p>'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

" using Powerline plugin instead
set statusline=%t%h%m%r%=[%b\ 0x%02B]\ \ \ %l,%c%V\ %P
" Always show a status line
set laststatus=2
" "make the command line 1 line high
set cmdheight=1

" <space> switches to the next window (give it a second)
:map <space> <c-W>w


if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '--include-vars',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

if $TERM == "xterm-256color"
    set t_Co=256
endif

colorscheme vividchalk

let g:slime_target = "tmux"
