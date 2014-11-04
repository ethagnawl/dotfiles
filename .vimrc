filetype off " required for vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

execute pathogen#infect()

Plugin 'gmarik/Vundle.vim'

" Bundle 'gmarik/vundle'
Bundle 'https://github.com/flazz/vim-colorschemes'
Bundle 'camelcasemotion'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-powerline.git'
Bundle 'othree/html5.vim'
Bundle 'itspriddle/vim-jquery'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails.git'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-vividchalk'
Bundle 'ervandew/supertab'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-endwise'
"Bundle 'jelera/vim-gummybears-colorscheme'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
"Bundle 'wikitopian/hardmode'
Bundle 'bling/vim-airline'
Bundle 'jpalardy/vim-slime'
Bundle 'ervandew/supertab'
Bundle 'svermeulen/vim-extended-ft'
Bundle 'vim-scripts/VimClojure'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'https://github.com/vim-scripts/Markology'
Bundle 'https://github.com/terryma/vim-expand-region'
Bundle 'https://github.com/tpope/vim-commentary'
Bundle 'https://github.com/tpope/vim-unimpaired'
Bundle 'https://github.com/tpope/vim-jdaddy'
Bundle 'https://github.com/paradigm/TextObjectify'
Bundle 'https://github.com/jeetsukumaran/vim-mochalatte'
Bundle 'https://github.com/xolox/vim-misc'
Bundle 'https://github.com/vim-scripts/vim-colorscheme-switcher'
Bundle 'https://github.com/vim-scripts/SmartColumnColor'
Bundle 'https://github.com/vim-scripts/ReplaceWithRegister'
Bundle 'https://github.com/vim-scripts/candyVirus.vim'
Bundle 'desert256.vim'
Bundle 'inkpot'
Bundle 'https://github.com/lambdatoast/elm.vim'
Bundle 'git://github.com/urso/haskell_syntax.vim.git'
Bundle "git://github.com/tpope/vim-leiningen.git"
Bundle "git://github.com/tpope/vim-projectionist.git"
Bundle "git://github.com/tpope/vim-dispatch.git"
Bundle "git://github.com/tpope/vim-fireplace.git"
Bundle 'calebsmith/vim-lambdify'

" used pathogen to install - vundle wasn't working
"Bundle "https://github.com/scrooloose/syntastic"


"" snippet infrastructure
"Bundle "MarcWeber/vim-addon-mw-utils"
"Bundle "tomtom/tlib_vim"
"Bundle "garbas/vim-snipmate"
"
"" snippets
"Bundle "honza/vim-snippets"


" yankstack was clobbering "*p on crunchbang
"Bundle 'yankstack'
"call yankstack#setup()
"nmap <leader>p <Plug>yankstack_substitute_older_paste

" call vundle#end()

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
" set colorcolumn=85
" let g:smart_display_opts = { 'column' : 85 }

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

" map \r to :RandomColorScheme
nnoremap <leader>r :RandomColorScheme<CR>

" kill beep
set vb t_vb=".

" noh no more!
nnoremap <silent> _ :nohl<CR>

" the following were culled from: https://gist.github.com/ethagnawl/c81273ec1c578019eed1

" <losh>

" use tab to jump to matching ), }, p, etc.
map <tab> %

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Don't move on *
nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>

" </losh>

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
  autocmd FileType php,python,javascript,coffee,sass,css,scss,html set ai sw=4 sts=4 et
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

set t_Co=256

let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

xmap <leader>c <Plug>SlimeRegionSend
nmap <leader>c <Plug>SlimeParagraphSend

" disable folding
set foldlevelstart=99
au FileType markdown,mkd setlocal nofoldenable

" disable newline comments
" http://vim.wikia.com/wiki/Disable_automatic_comment_insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

au BufNewFile,BufRead *.cshtml set filetype=html

set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
" for use with terryma/vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" https://github.com/thoughtbot/dotfiles/blob/master/vimrc
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

colorscheme darkblue

let g:syntastic_javascript_checkers = ['jshint']

" Custom syntastic settings:
function s:find_jshintrc(dir)
    let l:found = globpath(a:dir, '.jshintrc')
    if filereadable(l:found)
        return l:found
    endif

    let l:parent = fnamemodify(a:dir, ':h')
    if l:parent != a:dir
        return s:find_jshintrc(l:parent)
    endif

    return "~/.jshintrc"
endfunction

function UpdateJsHintConf()
    let l:dir = expand('%:p:h')
    let l:jshintrc = s:find_jshintrc(l:dir)
    let g:syntastic_javascript_jshint_args = l:jshintrc
endfunction

au BufEnter * call UpdateJsHintConf()

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
