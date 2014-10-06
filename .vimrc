"colorscheme koehler
colorscheme elflord
"filetype on
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

"Python features
if has("python")
	execute pathogen#infect()
	execute pathogen#helptags()
endif

filetype plugin indent on
set hlsearch

highlight DiffAdd cterm=none ctermfg=black ctermbg=Green gui=none guifg=black guibg=Green
highlight DiffDelete cterm=none ctermfg=black ctermbg=Red gui=none guifg=black guibg=Red
highlight DiffChange cterm=none ctermfg=black ctermbg=Yellow gui=none guifg=black guibg=Yellow
highlight DiffText cterm=none ctermfg=black ctermbg=Magenta gui=none guifg=black guibg=Magenta
