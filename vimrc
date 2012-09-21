"my vimrc file Jupiter Barrera
"jupir5@gmail.com

" Use Vim settings
set nocompatible          
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle  " required! 
Bundle 'gmarik/vundle'

" My Bundles here:

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle "vim-scripts/c.vim"
Bundle "edsono/vim-matchit"
Bundle "vim-scripts/The-NERD-tree"
Bundle "Soares/rainbow.vim"
Bundle "vim-scripts/OmniCppComplete"
Bundle "vim-scripts/ShowMarks"
Bundle "tpope/vim-surround"
Bundle "altercation/vim-colors-solarized"
Bundle "vim-scripts/taglist.vim"
Bundle "scrooloose/nerdcommenter"
Bundle "vim-scripts/SearchComplete"
Bundle "scrooloose/syntastic"
Bundle "sgeb/vim-matlab"
Bundle "vim-scripts/octave.vim--"
Bundle "pyflakes/pyflakes"
Bundle "ervandew/supertab"
Bundle "SirVer/ultisnips"
Bundle "vim-scripts/doxygen-support.vim"
Bundle "vim-scripts/DoxygenToolkit.vim"
Bundle "myusuf3/numbers.vim"
Bundle "xolox/vim-lua-inspect"
Bundle "vim-scripts/vimwiki"
Bundle "thanthese/Tortoise-Typing"
Bundle "gerw/vim-latex-suite"
Bundle "Lokaltog/vim-powerline"
Bundle "benmills/vimux"

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
set background=dark

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

" configure tags - add additional tags here or comment out not-used ones
"set tags+=~/.vim/tags/myProjects
set tags+=~/.vim/tags/stl
set tags+=~/.vim/tags/qt4
set tags+=~/.vim/tags/eigen
set tags+=./tags "Etiquetas generadas en el directorio actual
" set tags+=~/.vim/tags/gl

" build tags of your own project with CTRL+F12     
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>     
noremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>     
inoremap <F12> <Esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>  

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

"Cmake sintax highlight and identation mode

":autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in runtime! indent/cmake.vim 
":autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in setf cmake
":autocmd BufRead,BufNewFile *.ctest,*.ctest.in setf cmake

"For editing matlab files in vim
autocmd BufEnter *.m    compiler mlint 

if has ("autocmd")
    filetype plugin indent on
endif

" Vimwiki options
"
let bitacora = {}
let bitacora.path = '~/src/doc/jupbarrerastuff/bitacora/'
let bitacora.path_html = '~/Dropbox/msc_2012_T1/bitacora'
let bitacora.index = 'main'

let publicWiki = {}
let publicWiki.path = '~/src/doc/jupbarrerastuff/publicWiki/'
let publicWiki.path_html = '~/Dropbox/publicwiki/'
let publicWiki.index = 'index'
let publicWiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}

let g:vimwiki_list = [bitacora, publicWiki]

