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

"original repos on github

"Make vim a c++ IDE

Bundle "majutsushi/tagbar"
"Bundle "Rip-Rip/clang_complete"
"Bundle "Valloric/YouCompleteMe"
"Bundle "FooBarrior/clavim"
Bundle "git://git.wincent.com/command-t.git"
Bundle "SirVer/ultisnips"
Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-dispatch'
Bundle "scrooloose/nerdcommenter"
Bundle "scrooloose/syntastic"
Bundle "ervandew/supertab"
Bundle "scrooloose/nerdtree"
Bundle "airblade/vim-gitgutter"
Bundle "myusuf3/numbers.vim"
Bundle "edsono/vim-matchit"
Bundle "tpope/vim-tbone"
Bundle 'tpope/vim-fugitive'
Bundle "vim-scripts/ShowMarks"
Bundle "terryma/vim-multiple-cursors"
Bundle "kien/rainbow_parentheses.vim"
"Bundle "sven-strothoff/vim-clang_doxygen"
Bundle "jupbarrera/vim-clang_doxygen"
Bundle "tpope/vim-unimpaired"
"latex, python, others
Bundle "vim-scripts/vimwiki"
Bundle "mattn/calendar-vim"
Bundle "pyflakes/pyflakes"
Bundle "gerw/vim-latex-suite"
Bundle 'danro/rename.vim'
Bundle "thanthese/Tortoise-Typing"
Bundle "benmills/vimux"
"improve looks
Bundle "altercation/vim-colors-solarized"
Bundle "Lokaltog/vim-powerline"
"Syntax plugins
Bundle "gitorious.org/vim-for-qt-kde/vim-qmake.git"
Bundle 'tpope/vim-markdown'
Bundle 'suan/vim-instant-markdown'

"command-t is similar 
"Bundle "kien/ctrlp.vim"
"mmm implement somethig with ultisnips
"Bundle "vim-scripts/doxygen-support.vim"
"Bundle "vim-scripts/DoxygenToolkit.vim"
"to slow
"Bundle "vim-scripts/TwitVim"
"Bundle "kakkyz81/evervim"
"Not using
"Bundle "vim-scripts/Arduino-syntax-file"
Bundle "sgeb/vim-matlab"
"Bundle "vim-scripts/octave.vim--"
"Bundle "xolox/vim-lua-inspect"
"Bundle "tpope/vim-surround"
"Bundle "tpope/vim-rake"
"Bundle "tpope/vim-speeddating"
"seem like tagbar is better
"Bundle "artemkin/taglist.vim"
"clang_complete and ultisnips are better
"Bundle "vim-scripts/c.vim"
"Bundle "vim-scripts/OmniCppComplete"
"Bundle "vim-scripts/ctags.vim"
"can't make it work correctly
"Bundle "vim-scripts/SearchComplete"

" NOTE: comments after Bundle command are not allowed..
"
filetype plugin indent on     " required!

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
let g:clang_user_options=' -std=c++11 || exit 0'
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
"use ulisnips with clang_complete
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'

" use ultisnips with clang_doxygen
let g:clang_doxygen_snippet_plugin = "ultisnips"

" Limit popup menu height
set pumheight=15
" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType = "context"

"map for toggle nerdtree 
nnoremap <silent> <c-m> :NERDTreeToggle<cr>

" Tagbar remap TagbarToggle to F8
nmap <F8> :TagbarToggle<CR>

" Taglist remap TListToggle to F8
"nnoremap <silent> <F8> :TlistToggle<CR>
"let g:Tlist_Process_File_Always=1 

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

map <Leader>ct :w !detex \| wc -w<CR>

"EASIER SPLIT NAVIGATIONS

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"MORE NATURAL SPLIT OPENING

set splitbelow
set splitright

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
"autocmd BufEnter *.m    compiler mlint 

"Editing arduino files
autocmd! BufNewFile,BufRead *.pde,*.ino setlocal ft=arduino

if has ("autocmd")
    filetype plugin indent on
endif

"Vimux keybinding
" Prompt for a command to run
map <Leader>rp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>rl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>ri :VimuxInspectRunner<CR>
" Close all other tmux panes in current window
map <Leader>rx :VimuxClosePanes<CR>
" Close vim tmux runner opened by VimuxRunCommand
map <Leader>rq :VimuxCloseRunner<CR>
" Interrupt any command running in the runner pane
map <Leader>rs :VimuxInterruptRunner<CR>

"map Q to something useful
noremap Q gq

"commandT remap
noremap <leader>t <Esc>:CommandT<CR>

" Vimwiki options
"
let bitacora = {}
let bitacora.path = '~/Dropbox/Evernote/TesisWiki'
let bitacora.index = 'main'
let bitacora.syntax = 'markdown'
let bitacora.ext = '.txt'

let publicWiki = {}
let publicWiki.path = '~/Dropbox/Evernote/PublicWiki'
let publicWiki.index = 'index'
let publicWiki.syntax = 'markdown'
let publicWiki.ext = '.txt'
let publicWiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}

"let sentidren = {}
"let sentidren.path = '~/jupbarrerastuff/sentidren/'
"let sentidren.path_html = '~/Dropbox/proyectos/sentidren/sentidrenWiki/'
"let sentidren.index = 'index'

let g:vimwiki_list = [bitacora, publicWiki]
"let g:vimwiki_customwiki2html='~/bin/myScripts/customwiki2html.sh'

"diseble arrow keys in vim

noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

"function g:callGeeknoteOnFile()
      "call system("")
  "endfunction
"nnoremap <leader>se :call g:callGeeknoteOnFile()<CR>

"Patch to fix a error with tmux, this works instead of recompiling vim with
"ruby1.8 
ruby << EOF
class Object
  def flush; end unless Object.new.respond_to?(:flush)
  end
EOF

