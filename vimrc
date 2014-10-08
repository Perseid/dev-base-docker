set number

" add expansion of %%
" see http://vim.wikia.com/wiki/Easy_edit_of_files_in_the_same_directory
cabbr <expr> %% expand('%:p:h')

" if colors are available
if &t_Co > 2 || has("gui_running")
	" enable syntax highlighting
	syntax on
	" highlight matches
	set hlsearch
endif

set noautoindent
set ignorecase
set ruler
set showmatch
set showmode
set showcmd
set esckeys
set nocompatible
set backspace=indent,eol,start

" Complete longest common string, then "try again" - for bash like behaviour, 
" then list all entries, than choose full match from menu
" enable this for bash compatible behaviour
set wildmode=longest,longest,list,full
set wildmenu

" Longer history can't hurt.
set history=200

" Enable file type detection
filetype plugin indent on

" For security reasons: disallow modelines
set nomodeline
" Last but not least: lock all dangerous options
set secure
