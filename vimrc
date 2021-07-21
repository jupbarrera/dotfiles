" Use Vim settings
set nocompatible          
set nobackup
set noswapfile
set laststatus=2

" Remapping Esc key!!
:imap jk <Esc>
:imap kj <Esc>

"Some config
set history=50          " keep 50 lines of command line history
set hlsearch            " Switch on search pattern highlighting.
set incsearch           " Switch on incremental search
set ruler               " show the cursor position all the time
set number              " Turn on line numbering

"diseble arrow keys in vim

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
