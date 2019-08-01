" install vim-plug if it hasn't already been installed
" TODO: consider updating vim-plug if it does exist (maybe only check once per day?)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" FZF
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

" colorscheme plugins
Plug 'Haron-Prime/evening_vim'
Plug 'junegunn/seoul256.vim'
" Plug 'xolox/vim-colorscheme-switcher'
" Plug 'kamwitsta/flatwhite-vim'

" Python plugins
Plug 'nvie/vim-flake8', {'for': 'python'}
Plug 'vim-python/python-syntax', {'for': 'python'}
Plug 'Vimjas/vim-python-pep8-indent', {'for': 'python'}

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

" kotlin plugins
Plug 'udalov/kotlin-vim'

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
Plug 'elmcast/elm-vim'

" git plugins
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'tpope/vim-fugitive'
Plug 'mattn/webapi-vim'

" tmux plugins
" autocomplete from tmux with <C-X><C-U>
Plug 'wellle/tmux-complete.vim'

" crystal plugins
Plug 'rhysd/vim-crystal'

" C plugins
" Plug 'WolfgangMehner/c-support'

" Rust plugins
Plug 'rust-lang/rust.vim'

" lisp plugins
Plug 'wlangstroth/vim-racket'

" misc plugins
Plug 'Chiel92/vim-autoformat'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'FooSoft/vim-argwrap'
Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'bling/vim-airline'
Plug 'calebsmith/vim-lambdify'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'ethagnawl/vim-surround'
Plug 'godlygeek/tabular'
Plug 'idanarye/vim-casetrate'
Plug 'jpalardy/vim-slime'
Plug 'junegunn/vim-easy-align'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mileszs/ack.vim'
Plug 'mtth/scratch.vim'
Plug 'nelstrom/vim-visual-star-search'
Plug 'paradigm/TextObjectify'
Plug 'scrooloose/syntastic'
Plug 'sickill/vim-pasta'
Plug 'sk1418/HowMuch'
Plug 'skywind3000/asyncrun.vim'
Plug 'svermeulen/vim-extended-ft'
Plug 'terryma/vim-expand-region'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'triglav/vim-visual-increment'
Plug 'vim-scripts/LargeFile'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'vim-scripts/SmartColumnColor'
Plug 'vim-scripts/camelcasemotion'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/vim-do'
Plug 'xolox/vim-misc'
" Plug 'junegunn/vim-peekaboo'
" Plug 'lambdalisue/vim-pyenv'
" Plug 'spolu/dwm.vim'
" Plug 'vim-scripts/Markology'
" Plug 'vim-scripts/ZoomWin'
" Plug 'xolox/vim-reload'

let g:HowMuch_auto_engines = ['vim']

call plug#end()

syntax on
filetype plugin indent on
set number
set showcmd
set nocompatible
set encoding=utf-8
set colorcolumn=80
let g:smart_display_opts = { 'column' : 80 }

"" rust
let g:rustfmt_autosave = 1

" casetrate
let g:casetrate_leader = '\c'

set ruler
set showmatch
set smartcase
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right

" Who doesn't like autoindent?
set autoindent
" highlight CursorLine cterm=NONE ctermbg=green ctermfg=black guibg=green guifg=black
" highlight CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
" highlight CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

set cursorline
set cursorcolumn

" Spaces are better than a tab character
set expandtab
set smarttab

" Add _ as a word separator
":set iskeyword-=_

" W aliases w
command! W w
set lisp

" Who wants an 8 character tab?  Not me!
set shiftwidth=2
set softtabstop=2

"" Searching
set hlsearch                    " highlight matches
set ignorecase                  " searches are case insensitive...
set incsearch                   " incremental searching
set smartcase                   " ... unless they contain at least one capital letter

" remove trailing whitespace
au BufWritePre * :%s/\s\+$//e

" disable arrow keys
" noremap  <Up> ""
" noremap! <Up> <Esc>
" noremap  <Down> ""
" noremap! <Down> <Esc>
" noremap  <Left> ""
" noremap! <Left> <Esc>
" noremap  <Right> ""
" noremap! <Right> <Esc>

" turn off swap files
set noswapfile
set nobackup
set nowb

" autocomplete

  " scroll throught autocomplete results
  set wildmenu

  " Determines if, and for how long, the current completion type is retained.
  " e.g. use whole line completion, followed immediatyl by default word
  " completion.
  let g:SuperTabRetainCompletionDuration = 'completion'

  " " Use j / k / tab for autocomplete
  " https://www.reddit.com/r/vim/comments/4f79fd/weekly_vim_tips_and_tricks_thread_6/d26k71r
  inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
  inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
  inoremap <expr> <tab> ((pumvisible())?("\<Cr>"):("<Cr>"))


nnoremap <silent> <leader>w :ArgWrap<CR>

" Edit or view files in same directory as current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

set showmode

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
  " clear containing augroup in case .vimrc has been reloaded
  autocmd!

  autocmd FileType text setlocal textwidth=78

  " Jump to last cursor position unless it's invalid or in an event handler
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
augroup END


" vim fireplace config

" ctrl-e => eval selection
autocmd FileType clojure nnoremap <C-e> :Eval<CR>

" shift+e => eval file
autocmd FileType clojure nnoremap E :%Eval<CR>


" easy align config
" USAGE: v4jENTERC-x--ENTER (visual highlight 4 lines down,
""       start EasyAlign, enter regex mode, align on '--'
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" autoformat config
noremap <leader>af :Autoformat<CR><CR>

let g:formatdef_elmformat = '"elm-format --stdin --yes"'
let g:formatters_elm = ['elmformat']


" colorscheme config
" map \cscheme to :ShowColourSchemeName
" function! ShowColourSchemeName()
"     try
"         echo g:colors_name
"     catch /^Vim:E121/
"         echo "default
"     endtry
" endfunction


" nnoremap <leader>scs :call ShowColourSchemeName()<CR>

" nnoremap <leader>r :RandomColorScheme<CR> " map \r to :RandomColorScheme

" let myColorscheme = "seoul256"
" if filereadable(expand("$HOME/.vim/plugged/" . myColorscheme . ".vim/colors/" . myColorscheme . ".vim"))
"   let command = 'colorscheme ' . myColorscheme
"   execute command
" endif
colorscheme evening

highlight CursorLine cterm=NONE ctermbg=green ctermfg=black guibg=green guifg=black
" highlight CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
highlight CursorColumn ctermfg=White ctermbg=green cterm=bold guifg=white guibg=green gui=bold

let myColorscheme = "seoul256"
if filereadable(expand("$HOME/.vim/plugged/" . myColorscheme . ".vim/colors/" . myColorscheme . ".vim"))
  let command = 'colorscheme ' . myColorscheme
  execute command
endif


" Control-P config
" let g:ctrlp_by_filename = 0
" let g:ctrlp_custom_ignore = {
"   \ 'file': '\v\.(pyc)$',
"   \ 'dir': 'build_env\|tmp\|elm-stuff\|node_modules\|DS_Store\|\.git\|target\|www\|cache\|_site\|.stack-work\|sitepackages\|storage\|.storage',
"   \}
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_match_window_bottom = 0
" let g:ctrlp_match_window_reversed = 0
" let g:ctrlp_show_hidden = 1
" let g:ctrlp_switch_buffer = 0
" let g:ctrlp_working_path_mode = 0

" vim-pasta config
" https://github.com/ctrlpvim/ctrlp.vim/issues/447
" let g:pasta_disabled_filetypes = ['ctrlp']


" vim slime config
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
nmap <leader>c <Plug>SlimeConfig
xmap <leader>e <Plug>SlimeRegionSend
nmap <leader>e <Plug>SlimeLineSend
" kill unused mappings in order to prevent collisions with ^C-c
nmap <Plug>NoSlimeMotionSend <Plug>SlimeMotionSend
nmap <Plug>NoSlimeParagraphSend <Plug>SlimeParagraphSend
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
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces


" folding config
set foldlevelstart=99 " disables folding
autocmd FileType markdown,mkd setlocal nofoldenable


" disable newline comments
" http://vim.wikia.com/wiki/Disable_automatic_comment_insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" custom filetypes
" move into filetypes.vim
autocmd BufNewFile,BufRead *.boot set filetype=clojure
autocmd BufNewFile,BufRead *.cljs.hl set filetype=clojure
autocmd BufNewFile,BufRead *.cljs set filetype=clojure

autocmd BufNewFile,BufRead *.cshtml set filetype=html

autocmd BufNewFile,BufRead *.es6 set filetype=javascript
autocmd BufNewFile,BufRead *.json set filetype=javascript

autocmd BufNewFile,BufRead *.styl set filetype=stylus

" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" syntastic/jshint config
let g:syntastic_javascript_checkers = ['jshint']

function! s:find_jshintrc(dir)
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

function! UpdateJsHintConf()
    let l:dir = expand('%:p:h')
    let l:jshintrc = s:find_jshintrc(l:dir)
    let g:syntastic_javascript_jshint_args = l:jshintrc
endfunction

autocmd BufEnter *.js call UpdateJsHintConf()


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
function! AddSemicolonToLineEnd()
  " mq => `q creates/moves to mark q
  execute "normal! mqA;\<esc>`q"
  silent! call repeat#set("\<plug>(AddSemicolonToLineEnd)")
endfunction

nmap <leader>as <plug>(AddSemicolonToLineEnd)
nnoremap <plug>(AddSemicolonToLineEnd) :call AddSemicolonToLineEnd()<cr>

" add comma to end of line
function! AddCommaToLineEnd()
  execute "normal! mqA,\<esc>`q"
  silent! call repeat#set("\<plug>(AddCommaToLineEnd)")
endfunction

nmap <leader>ac <plug>(AddCommaToLineEnd)
nnoremap <plug>(AddCommaToLineEnd) :call AddCommaToLineEnd()<cr>

" add deriving (Eq, Show) to end of line
function! AddDerivingToLineEnd()
  execute "normal! mqA deriving (Eq, Show)\<esc>`q"
endfunction

nnoremap <leader>ads :call AddDerivingToLineEnd()<cr>


"" enable mouse selection inside vim - as opposed to the terminal
" http://www.electricmonk.nl/log/2011/04/05/vim-x11-and-the-clipboard-copy-paste/
set mouse=a

" save + reg to clipboard on exit
autocmd VimLeave * call system("which xsel && xsel -ib", getreg('+'))


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

" spelling: fixes commonly misspelled words (known to vim)
nnoremap <Leader>fs 1z=

" undo into the past
" TODO: routinely wipe contents of undodir
set undofile
set undodir=~/.vim/undodir


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

" TODO: integrate use_tabs - useful for Makefiles, etc.
" command! Tabs call s:use_tabs()
" function! s:use_tabs()
"     let &tabstop=4
"     let &shiftwidth=4
"     let &softtabstop=0
"     set noexpandtab
" endfunction

" macros

  " Do not redraw screen in the middle of a macro. Makes them complete faster.
  " https://www.hillelwayne.com/post/intermediate-vim/
  set lazyredraw

  " qq to record, Q to replay
  nmap Q @q

" abbreviations

  au FileType sh iabbrev askeleton #!/usr/bin/env bash<CR><CR>set -euo pipefail<CR>IFS=$'\n\t<CR>

  autocmd FileType c iabbrev askeleton #include <stdlib.h><CR>#include <stdio.h><CR>#include <stdbool.h><CR><CR>int main() {<CR>printf("k\n");<CR>return 0;<CR>}
  autocmd FileType c iabbrev aprintf printf("hi\n");
  autocmd FileType c iabbrev afor for (i; i < length; i += 1) {<CR>}

  autocmd FileType javascript,c iabbrev aif if () {<CR>} else if () {<CR>} else {<CR>}

  autocmd FileType css,sass,scss,stylesheet iabbrev afbleed bottom: 0;<CR>left: 0;<CR>position: absolute;<CR>right: 0;<CR>top: 0;

  autocmd FileType ruby iabbrev aassert expected = false<CR>actual = true<CR>assert_equal(expected, actual)
  autocmd FileType ruby iabbrev arescue begin<CR>rescue Exception => e<CR>byebug
  autocmd FileType ruby iabbrev atest test "" do<CR>

  " insert debugger
  autocmd FileType c iabbrev adebugger printf("%s\n", x);
  autocmd FileType clojure,clojurescript iabbrev adebugger (prn 0)
  autocmd FileType css,sass,scss,stylesheet iabbrev adebugger color: #bada55;
  autocmd FileType elm iabbrev adebugger Debug.log (Debug.toString model)
  autocmd FileType haskell iabbrev adebugger print $
  autocmd FileType javascript,coffee iabbrev adebugger debugger
  autocmd FileType ruby iabbrev adebugger byebug
  autocmd FileType python iabbrev adebugger print("bar: %s" % (bar))

  " insert sleep
  autocmd FileType python iabbrev asleep import time; time.sleep(22)

  " insert exception
  autocmd FileType python iabbrev aexcept raise Exception("foo")


  " insert template tag
  autocmd FileType htmldjango iabbrev pecho {{ foo }}

  " insert new function
  au FileType rust iabbrev afn fn foo() -> u32 {<CR>42<CR>}

  " logical operators
  " autocmd FileType text iabbrev adisj ∨
  " autocmd FileType text iabbrev aconj ∧
  " autocmd FileType text iabbrev aneg ¬
  " autocmd FileType text iabbrev aimpl ⇒
  " autocmd FileType text iabbrev abicond ⇔

  " fix recurring typo when quitting all
  cnoreabbrev <expr> qA ((getcmdtype() is# ':' && getcmdline() is# 'qA') ? ('qa') : ('qA'))

  " TODO: what is this doing again?
  " TODO: make this work properly - currently dumps `c qx only` into status bar
  " :ca qx only
  " cnoreabbrev <expr> qx ((getcmdtype() is# ':' && getcmdline() is# 'qx') ? ('only') : ('qx'))

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
      return ""
    else

      " Seems to be required in order to find the appropriate closing brace.
      " If searchpair is executed from mq_start_line_number, it finds the MQ's
      " containing bracket pair.
      exec "normal $"

      let mq = getline(mq_start_line_number)
      let mq_pretty = "MQ: " . substitute(mq, '^\s*\(.\{-}\)\s*$', '\1', '') . "...}"
      let mq_end_line_number = searchpair("{", "", "}", "nW")
      if (target_line_number > mq_start_line_number && target_line_number < mq_end_line_number)
        return mq_pretty
      else
        return ""
      endif
    endif
  catch
    echoerr error_message
    return ""
  finally
    call setpos('.', target_cursor_position)
  endtry
endfunction

function! EchoContainingMediaQuery()
  echo FindContainingMediaQuery()
endfunction

autocmd FileType stylesheet,css,scss nnoremap <silent> <leader>mq :call EchoContainingMediaQuery()<CR>
" autocmd FileType stylesheet,css,scss call airline#parts#define_function('display_containing_media_query', 'FindContainingMediaQuery')

" dwm vim mappings
" nmap <C-_> <Plug>DWMRotateCounterclockwise
" nmap <C-\> <Plug>DWMRotateClockwise


" " This callback will be executed when the entire command is completed
" function! BackgroundCommandClose(channel)
"   " Read the output from the command into the quickfix window
"   execute "cfile! " . g:backgroundCommandOutput
"   " Open the quickfix window
"   copen
"   unlet g:backgroundCommandOutput
" endfunction

" function! RunBackgroundCommand(command)
"   " Make sure we're running VIM version 8 or higher.
"   if v:version < 800
"     echoerr 'RunBackgroundCommand requires VIM version 8 or higher'
"     return
"   endif

"   if exists('g:backgroundCommandOutput')
"     echo 'Already running task in background'
"   else
"     echo 'Running task in background'
"     " Launch the job.
"     " Notice that we're only capturing out, and not err here. This is because, for some reason, the callback
"     " will not actually get hit if we write err out to the same file. Not sure if I'm doing this wrong or?
"     let g:backgroundCommandOutput = tempname()
"     call job_start(a:command, {'close_cb': 'BackgroundCommandClose', 'out_io': 'file', 'out_name': g:backgroundCommandOutput})
"   endif
" endfunction

" command! -nargs=+ -complete=shellcmd RunBackgroundCommand call RunBackgroundCommand(<q-args>)

" function! Mirror(dict)
"     for [key, value] in items(a:dict)
"         let a:dict[value] = key
"     endfor
"     return a:dict
" endfunction

" function! S(number)
"     return submatch(a:number)
" endfunction

" function! SwapWords(dict, ...)
"     let words = keys(a:dict) + values(a:dict)
"     let words = map(words, 'escape(v:val, "|")')
"     if(a:0 == 1)
"         let delimiter = a:1
"     else
"         let delimiter = '/'
"     endif
"     let pattern = '\v(' . join(words, '|') . ')'
"     exe '%s' . delimiter . pattern . delimiter
"         \ . '\=' . string(Mirror(a:dict)) . '[S(0)]'
"         \ . delimiter . 'g'
" endfunction

function! InsertHyphensAndUnderscores()
  execute "normal! i- wi_f#gea_"
endfunction

function! InsertEmptyLines()
  silent g/.\n\n\@!/norm o
endfunction

function! FormatComicListEntries()
  execute "silent! normal! gg^VG:sort\<CR>"
  execute "silent! normal! gg^VG:call InsertHyphensAndUnderscores()\<CR>"
  execute "silent! normal! gg^VG:call InsertEmptyLines()\<CR>"
endfunction

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

fun! FzfOmni()
  let is_git = system('git status')
  if v:shell_error
    :Files
  else
    :GFiles --exclude-standard --others --cached
  endif
endfun

silent! nnoremap <C-P> :call FzfOmni()<CR>
