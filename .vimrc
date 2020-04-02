" Vundle stuff
set nocompatible " required by Vundle
filetype off " required by Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'taglist.vim'
Plugin 'nanotech/jellybeans.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" End Vundle

"colorscheme koehler
"colorscheme elflord
colorscheme jellybeans
syntax enable

"TagList plugin (IDE style tag browser)
map <F8> :TlistToggle<cr>
vmap <F8> <esc>:TlistToggle<cr>
imap <F8> <esc>:TlistToggle<cr>

"more standard wildcard functionality
set wildmode=longest,list:longest,list:full

set laststatus=2
set modeline

"I like bottom post, not top post
set splitbelow
"Likewise open right
set splitright

"The following make subwindows more "focused"
set noequalalways
"Curtain style vertical splits
set winminwidth=0
nmap <c-h> <c-w>h<c-w><Bar>
nmap <c-l> <c-w>l<c-w><Bar>
"Horizonal
set winminheight=0
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

"look for alternate location tags (when current directory is readonly)
if filereadable("/tmp/dmp.tags")
  set tags+=/tmp/dmp.tags
endif

"cscope settings
if has("cscope")
  if executable("cscope")
    if filereadable("cscope.out")
      cs add cscope.out
    elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
    endif
    "use bothe cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag
    "check cscope before ctags
    set csto=0
    "show message when another cscope db is added
    set cscopeverbose
  endif
endif

" switching from Pathogen to Vundle?
""Python features
"if has("python")
"	execute pathogen#infect()
"	execute pathogen#helptags()
"endif

filetype plugin indent on
set hlsearch

"highlight DiffAdd cterm=none ctermfg=black ctermbg=Green gui=none guifg=black guibg=Green
"highlight DiffDelete cterm=none ctermfg=black ctermbg=Red gui=none guifg=black guibg=Red
"highlight DiffChange cterm=none ctermfg=black ctermbg=Yellow gui=none guifg=black guibg=Yellow
"highlight DiffText cterm=none ctermfg=black ctermbg=Magenta gui=none guifg=black guibg=Magenta


" set Vim-specific sequences for RGB colors
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"set termguicolors
colorscheme jellybeans
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none', 'gui': 'none', '256gui': 'none' },
\}
