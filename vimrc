"my vimrc file Jupiter Barrera
"jupir5@gmail.com

" Use Vim settings
set nocompatible          
set history=50
set nobackup
set noswapfile
set laststatus=2 

filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle  " required! 
Bundle 'gmarik/vundle'

" My Bundles here:

" original repos on github
Bundle "artemkin/taglist.vim"
Bundle "vim-scripts/ShowMarks"
Bundle "vim-scripts/SearchComplete"
Bundle "vim-scripts/vimwiki"
Bundle "Rip-Rip/clang_complete"
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-speeddating'
Bundle "altercation/vim-colors-solarized"
Bundle 'kien/ctrlp.vim'
Bundle "scrooloose/nerdcommenter"
Bundle "scrooloose/syntastic"
Bundle "scrooloose/nerdtree"
Bundle "edsono/vim-matchit"
Bundle 'vim-ruby/vim-ruby'
Bundle "Soares/rainbow.vim"
Bundle "sgeb/vim-matlab"
Bundle "pyflakes/pyflakes"
Bundle "ervandew/supertab"
Bundle "SirVer/ultisnips"
Bundle "myusuf3/numbers.vim"
Bundle "thanthese/Tortoise-Typing"
Bundle "gerw/vim-latex-suite"
Bundle "Lokaltog/vim-powerline"
Bundle "benmills/vimux"
Bundle "gitorious.org/vim-for-qt-kde/vim-qmake.git"
Bundle "git://git.wincent.com/command-t.git"
Bundle 'danro/rename.vim'
Bundle "airblade/vim-gitgutter"

"Bundle "vim-scripts/doxygen-support.vim"
"Bundle "vim-scripts/DoxygenToolkit.vim"
"Bundle "vim-scripts/TwitVim"
"Bundle "vim-scripts/Arduino-syntax-file"
"Bundle "vim-scripts/octave.vim--"
"Bundle "kakkyz81/evervim"
"Bundle "xolox/vim-lua-inspect"
"Bundle "vim-scripts/c.vim"
"Bundle "vim-scripts/OmniCppComplete"
"Bundle 'vim-scripts/ctags.vim'
"Bundle "tpope/vim-surround"
"Bundle 'tpope/vim-rake'


filetype plugin indent on     " required!

" NOTE: comments after Bundle command are not allowed..

" Remapping Esc key!!
:imap jk <Esc>

"Some config
set history=50          " keep 50 lines of command line history
set hlsearch            " Switch on search pattern highlighting.
set incsearch           " Switch on incremental search
set ruler               " show the cursor position all the time
set number              " Turn on line numbering
set ignorecase
set backspace=2         "Problemas con el backspace

"Identación para cpp

set expandtab
set tabstop=4
"set cindent
set shiftwidth=4

" Clang Complete Settings

let g:clang_use_library = 1
" if there's an error, allow us to see it
let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_complete_patterns=0
" Limit memory use
let g:clang_memory_percent=70

" Remove -std=c++11 if you don't use C++ for everything like I do.
"let g:clang_user_options=' -std=c++11 || exit 0'
"
let g:clang_auto_select=1
set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
" The single one that works with clang_complete
let g:clang_snippets_engine='clang_complete'
" Disable auto popup, use <Tab> to autocomplete
let g:clang_complete_auto = 0

" Limit popup menu height
set pumheight=15
" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType = "context"

"Activate spellchecker
runtime plugins/spellfile.vim
set spell
set spelllang=es,en
"muestra X sugerencias, por defecto son 5.
set spellsuggest=5

"Formating Text
func! WordProcessorMode() 
    setlocal formatoptions=1 
    setlocal noexpandtab 
    map j gj 
    map k gk
    "setlocal spell spelllang=en_us 
    set complete+=s
    set formatprg=par
    setlocal wrap 
    setlocal linebreak 
endfu 
com! WP call WordProcessorMode()

"For vim-powerline 
let g:Powerline_symbols = 'fancy'

"Sintax!!
syntax on

"colorscheme
"For solarized theme
set t_Co=16

colorscheme solarized
set background=dark"light

"Barras de estado
set laststatus=2

"For Programming
filetype plugin on
filetype plugin indent on

"Latex-Suite
set grepprg=grep\ -nH\ $*

"Algunas configuraciones para LaTex
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf='evince'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf, aux' 
let g:Imap_FreezeImap=1

let mapleader = ","

"iQuickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"Status line
set laststatus=2
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [HEX=\%02.2B]\ [X=%04l\ Y=%03v]\ [LEN=%L]
"old
"set statusline=[FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

"For editing matlab files in vim
autocmd BufEnter *.m    compiler mlint 

"Editing arduino files
autocmd! BufNewFile,BufRead *.pde,*.ino setlocal ft=arduino

if has ("autocmd")
    filetype plugin indent on
endif

"map Q to something useful
noremap Q gq

"commandT remap
noremap <leader>o <Esc>:CommandT<CR>

" Vimwiki options
"
let bitacora = {}
let bitacora.path = '~/pro/doc/jupbarrerastuff/bitacora/'
let bitacora.path_html = '~/Dropbox/msc_2012_T1/bitacora'
let bitacora.index = 'main'

let publicWiki = {}
let publicWiki.path = '~/pro/doc/jupbarrerastuff/publicWiki/'
let publicWiki.path_html = '~/Dropbox/publicwiki/'
let publicWiki.index = 'index'
let publicWiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}

let sentidren = {}
let sentidren.path = '~/pro/doc/jupbarrerastuff/sentidren/'
let sentidren.path_html = '~/Dropbox/proyectos/sentidren/sentidrenWiki/'
let sentidren.index = 'index'

let g:vimwiki_list = [bitacora, publicWiki, sentidren]

"diseble arrow keys in vim

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

