set clipboard=unnamed
set nu    "show line numbers"
set showcmd "show command"
set cursorline "Highlight cursor horizontally"
set cursorcolumn "Highlight cursor vertically"


"Clear status line when vimrc is reloaded"
set statusline=

"Status line left side"
set statusline+=\ %F\ %M\ %R

"Separate the left side from the right side"
set statusline+=%=

"Status line right side"
set statusline+=\ row:\ %l\ col:\ %c

set laststatus=2

" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on

    " Use actual tab chars in Makefiles.
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

" For everything else, use a tab width of 4 space chars.
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.
