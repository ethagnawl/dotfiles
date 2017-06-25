filetype off " required for vundle

call plug#begin('~/.vim/plugged')

" C/C++
" Plug 'WolfgangMehner/c-support'


" colorscheme plugins
Plug 'junegunn/seoul256.vim'
Plug 'vim-colorscheme-switcher'

" QML plugins
Plug 'peterhoeg/vim-qml'

" clojure plugins
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-leiningen'
" Plug 'tpope/vim-fireplace'
" Plug 'venantius/vim-eastwood'

" java plugins
Plug 'tpope/vim-classpath'

" javascript plugins
Plug 'einars/js-beautify'
Plug 'itspriddle/vim-jquery'
Plug 'kchmck/vim-coffee-script'
Plug 'maksimr/vim-jsbeautify'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-jdaddy'

" ruby plugins
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

" html plugins
Plug 'digitaltoad/vim-jade'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'tpope/vim-haml'

" css plugins
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'groenewege/vim-less'
Plug 'wavded/vim-stylus'

" markdown plugins
Plug 'plasticboy/vim-markdown'

" haskell plugins
Plug 'eagletmt/ghcmod-vim'
Plug 'Shougo/vimproc.vim'
Plug 'urso/haskell_syntax.vim'

" Elm plugins
Plug 'lambdatoast/elm.vim'

" git plugins
" Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'tpope/vim-fugitive'

" tmux plugins
" autocomplete from tmux with <C-X><C-U>
Plug 'wellle/tmux-complete.vim'

" crystal plugins
Plug 'rhysd/vim-crystal'

" misc plugins
Plug 'bling/vim-airline'
Plug 'calebsmith/vim-lambdify'
Plug 'camelcasemotion'
Plug 'Chiel92/vim-autoformat'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ethagnawl/vim-surround'
Plug 'FooSoft/vim-argwrap'
Plug 'godlygeek/tabular'
Plug 'idanarye/vim-casetrate'
Plug 'jpalardy/vim-slime'
Plug 'junegunn/vim-easy-align'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'kien/rainbow_parentheses.vim'
Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'mileszs/ack.vim'
Plug 'mtth/scratch.vim'
Plug 'nelstrom/vim-visual-star-search'
Plug 'paradigm/TextObjectify'
Plug 'sickill/vim-pasta'
Plug 'skywind3000/asyncrun.vim'
Plug 'supertab'
Plug 'svermeulen/vim-extended-ft'
Plug 'terryma/vim-expand-region'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'triglav/vim-visual-increment'
Plug 'vim-scripts/LargeFile'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'vim-scripts/SmartColumnColor'
Plug 'vim-scripts/vim-do'
Plug 'vim-scripts/ZoomWin'
Plug 'wlangstroth/vim-racket'
Plug 'xolox/vim-misc'
" Plug 'xolox/vim-reload'
" Plug 'vim-scripts/Markology'
" Plug 'scrooloose/syntastic'

call plug#end()

:syntax on
filetype plugin indent on
:set number
set showcmd
set nocompatible
set encoding=utf-8
set colorcolumn=80
let g:smart_display_opts = { 'column' : 80 }

" casetrate
let g:casetrate_leader = '\c'

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
" au BufWritePre * :%s/\s\+$//e

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

nnoremap <silent> <leader>w :ArgWrap<CR>

" Edit or view files in same directory as current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

set showmode

" load bashrc
set shellcmdflag=-ic

" Jump to start and end of line using the home row keys
noremap H ^
noremap L $

" Search and replace word under cursor (,;)
nnoremap <leader>; :%s/\<<C-r><C-w>\>//<Left>

" leader jumps into command prompt
nnoremap <leader> :

" leader re forces screen redraw - useful for removing cursor/text artifacts
nnoremap <leader>re :redraw!<CR>

" kill beep
set vb t_vb=".

" map ^C-c to escape, ^C-c works most of the time,
" but doesn't trigger the InsertLeave event
inoremap <C-c> <Esc>

" kill search highlights with ^C-c
nnoremap <silent> <C-c> :nohl<cr><Esc>

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

" S acts as the inverse of J - split line at cursor
nnoremap S i<CR><Esc>^mwgk:silent! s/\v +$//<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM AUTOCMDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup vimrcEx

  " Clear all autocmds in the group
  au!

  au FileType text setlocal textwidth=78

  " Jump to last cursor position unless it's invalid or in an event handler
  au BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
augroup END


" vim fireplace config

" ctrl-e => eval selection
au FileType clojure nnoremap <C-e> :Eval<CR>

" shift+e => eval file
au FileType clojure nnoremap E :%Eval<CR>


" easy align config
" USAGE: v4jENTERC-x--ENTER (visual highlight 4 lines down,
""       start EasyAlign, enter regex mode, align on '--'
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" autoformat config
noremap <leader>af :Autoformat<CR><CR>


" colorscheme config
" map \cscheme to :ShowColourSchemeName
function! ShowColourSchemeName()
    try
        echo g:colors_name
    catch /^Vim:E121/
        echo "default
    endtry
endfunction

nnoremap <leader>scs :call ShowColourSchemeName()<CR>

nnoremap <leader>r :RandomColorScheme<CR> " map \r to :RandomColorScheme

let myColorscheme = "seoul256"
if filereadable(expand("$HOME/.vim/bundle/" . myColorscheme . ".vim/colors/" . myColorscheme . ".vim"))
  let command = 'colorscheme ' . myColorscheme
  execute command
endif


" Control-P config
let g:ctrlp_by_filename = 0
let g:ctrlp_custom_ignore = 'tmp\|elm-stuff\|node_modules\|DS_Store\|git\|target\|www\|cache\|_site\|.stack-work'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_switch_buffer = 0


" vim slime config
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
xmap <leader>e <Plug>SlimeRegionSend
" nmap <leader>e <Plug>SlimeParagraphSend
nmap <leader>e <Plug>SlimeLineSend
nmap <leader>c <Plug>SlimeConfig
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
let g:slime_dont_ask_default = 1


" RainbowParentheses config
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


" folding config
set foldlevelstart=99 " disables folding
au FileType markdown,mkd setlocal nofoldenable


" disable newline comments
" http://vim.wikia.com/wiki/Disable_automatic_comment_insertion
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" custom filetypes
au BufNewFile,BufRead *.boot set filetype=clojure
au BufNewFile,BufRead *.cljs.hl set filetype=clojure
au BufNewFile,BufRead *.cljs set filetype=clojure
au BufNewFile,BufRead *.cshtml set filetype=html
au BufNewFile,BufRead *.json set filetype=javascript
au BufRead,BufNewFile *.es6 setfiletype javascript
au BufNewFile,BufReadPost *.styl set filetype=stylus


" syntastic/jshint config
let g:syntastic_javascript_checkers = ['jshint']

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


" syntastic/scss config
let g:syntastic_scss_checkers = ['scss_lint']

" syntastic racket config
let g:syntastic_enable_racket_racket_checker=1

" vim-expand-region config
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
" for use with terryma/vim-expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


" statusline config
set statusline=%t%h%m%r%=[%b\ 0x%02B]\ \ \ %l,%c%V\ %P
set laststatus=2 " Always show a status line
set cmdheight=1 " "make the command line 1 line high


" split config
" <space> switches to the next window (give it a second)
:map <space> <c-W>w

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" https://github.com/thoughtbot/dotfiles/blob/master/vimrc
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright


" terminal color config
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

set t_Co=256

set term=screen-256color


" haskell config
let $PATH = $PATH . ':' . expand('~/.cabal/bin')


" clipboard config
set clipboard=unnamed


" vimrc shortucts

  " open .vimrc using \ev
  nnoremap <leader>ev :vsplit $MYVIMRC<cr>

  " source .vimrc
  nnoremap <leader>sv :source $MYVIMRC<cr>


" prevent hangups caused by long lines (i.e. data-uris)
set synmaxcol=200


" change in next parens - cin(
onoremap in( :<c-u>normal! f(vi(<cr>


" add semicolon to end of line
function AddSemicolonToLineEnd()
  execute "normal! mqA;\<esc>`q"
endfunction

nnoremap <leader>as :call AddSemicolonToLineEnd()<cr>

" add comma to end of line
function AddCommaToLineEnd()
  execute "normal! mqA,\<esc>`q"
endfunction

nnoremap <leader>ac :call AddCommaToLineEnd()<cr>

"" enable mouse selection inside vim - as opposed to the terminal
" http://www.electricmonk.nl/log/2011/04/05/vim-x11-and-the-clipboard-copy-paste/
set mouse=a

" save + reg to clipboard on exit
au VimLeave * call system("which xsel && xsel -ib", getreg('+'))


" Windows resizing using arrow keys
" inspired by: github.com/martin-svk/dot-files/blob/master/neovim/init.vim
" TODO: figure out workable alt version or kill window_resize_by_n global

let g:window_resize_by_n = 5

function! ContextAwareVerticalWindowResize(direction, ...)

  let window_resize_by_n = a:0 > 0 ? a:1 : g:window_resize_by_n

  let current_window_is_last_window = (winnr() == winnr("$"))

  if (a:direction == 'left')
    let [modifier_1, modifier_2] = ['+', '-']
  else
    let [modifier_1, modifier_2] = ['-', '+']
  endif

  let modifier = current_window_is_last_window ? modifier_1 : modifier_2

  let command = 'vertical resize ' . modifier . window_resize_by_n . '<CR>'

  execute command

endfunction

nnoremap <silent> <Right> :call ContextAwareVerticalWindowResize('right', 10)<cr>
nnoremap <silent> <Left> :call ContextAwareVerticalWindowResize('left', 10)<cr>
nnoremap <silent> <Up> :resize +1<CR>
nnoremap <silent> <Down> :resize -1<CR>


" use alpha base for ^c-a/x
set nrformats=alpha

" spelling
nnoremap <Leader>fs 1z=

" undo into the past
set undofile
set undodir=~/.vim/undodir

" " Use j / k / tab for autocomplete
" https://www.reddit.com/r/vim/comments/4f79fd/weekly_vim_tips_and_tricks_thread_6/d26k71r
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
inoremap <expr> <tab> ((pumvisible())?("\<Cr>"):("<Cr>"))

" prompt for/jump to Nth +/- entry in jumplist
" http://vim.wikia.com/wiki/Jumping_to_previously_visited_locations
function! GotoJump()
  jumps
  let j = input("Please select your jump: ")
  if j != ''
    let pattern = '\v\c^\+'
    if j =~ pattern
      let j = substitute(j, pattern, '', 'g')
      execute "normal " . j . "\<c-i>"
    else
      execute "normal " . j . "\<c-o>"
    endif
  endif
endfunction

nmap <Leader>j :call GotoJump()<CR>
" abbreviations
au FileType javascript,c iabbrev aif if () {<CR>} else if () {<CR>} else {<CR>}

" macros

  " qq to record, Q to replay
  nmap Q @q

" abbreviations

  au FileType c iabbrev askeleton #include <stdio.h><CR><CR>int main() {<CR>printf("k\n");<CR>return 0;<CR>}
  au FileType c iabbrev aprintf printf("hi\n");

  au FileType javascript,c iabbrev aif if () {<CR>} else if () {<CR>} else {<CR>}

  " fix recurring typo when quitting all
  cnoreabbrev <expr> qA ((getcmdtype() is# ':' && getcmdline() is# 'qA') ? ('qa') : ('qA'))

  " TODO: make this work properly - currently dumps `c qx only` into status bar
  " :ca qx only
  cnoreabbrev <expr> qx ((getcmdtype() is# ':' && getcmdline() is# 'qx') ? ('only') : ('qx'))

" autocmds

  " use // style comments instead of /* ... */ in c files
  autocmd FileType c setlocal commentstring=//%s

" autocomplete kebab-case words i.e. send-email
set iskeyword+=-

" TODO: investigate the following:
" https://dougblack.io/words/a-good-vimrc.html
" nnoremap gV `[v`]
" autocmd BufEnter Makefile setlocal noexpandtab
" let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" nnoremap <leader>u :GundoToggle<CR>

"" copy to end of line
"nnoremap Y y$
"" copy to system clipboard
"nnoremap gy "+y
"" copy whole file to system clipboard
"nnoremap gY gg"+yG

function! FindContainingMediaQuery()
  "" TODO:
  "" - handle nested queries
  "" - add output to statusline (on cursor move?)
  let error_message = "Unable to find media query."
  let target_line_number = line(".")
  let target_cursor_position = getpos(".")

  try
    let mq_start_line_number = search("@media", "bW")

    if mq_start_line_number == 0
      echo error_message
    else

      " Seems to be required in order to find the appropriate closing brace.
      " If searchpair is executed from mq_start_line_number, it finds the MQ's
      " containing bracket pair.
      exec "normal $"

      let mq = getline(mq_start_line_number)
      let mq_pretty = substitute(mq, '^\s*\(.\{-}\)\s*$', '\1', '')
      let mq_end_line_number = searchpair("{", "", "}", "nW")
      if (target_line_number > mq_start_line_number && target_line_number < mq_end_line_number)
        echo mq_pretty
      else
        echo error_message
      endif
    endif
  catch
    echo error_message
  finally
    call setpos('.', target_cursor_position)
  endtry
endfunction

autocmd FileType stylesheet,css,scss nnoremap <silent> <leader>mq :call FindContainingMediaQuery()<CR>
