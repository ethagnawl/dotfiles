call pathogen#infect()
call pathogen#helptags()
:syntax on
filetype plugin indent on
:set number
set showcmd
set nocompatible
set encoding=utf-8
set colorcolumn=85

" Who doesn't like autoindent?
set autoindent
:hi CursorLine   cterm=NONE ctermbg=green ctermfg=black guibg=green guifg=black

set cursorline

" NERDTree goodness
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Spaces are better than a tab character
set expandtab
set smarttab

" Add _ as a word separator
:set iskeyword-=_

" W aliases w
:command W w

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
  autocmd FileType ruby,haml,eruby,yaml,html,cucumber set ai sw=2 sts=2 et
  autocmd FileType python,javascript,coffee,sass,css,scss set sw=4 sts=4 et
augroup END
colorscheme gummy_bears

let g:ctrlp_map = '<c-p>'

" noh no more!
:nnoremap <esc> :noh<return><esc>
