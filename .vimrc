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
