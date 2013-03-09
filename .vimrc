syntax on
set nocompatible
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
"set spell
set incsearch
set ignorecase
set cursorline
set history=1000
set hlsearch
set tabstop=4
set number
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
if $TERM == "xterm-256color"
    set t_Co=256
endif
"set textwidth=80
"set wrap!

filetype indent plugin on
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype eruby setlocal ts=2 sw=2 expandtab

"Map newline without entering insert mode
nnoremap <C-J> i<CR><Esc>kA<Esc>

"Use pathogen to manage plugins
call pathogen#infect()
call pathogen#helptags()

"NerdTree
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

"CoffeeScript preview compile
map <F3> :CoffeeCompile<CR>

"Color chars past some chars
"augroup vimrc_autocmds
"  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
"  autocmd BufEnter * match OverLength /\%80v.*/
"augroup END

colorscheme molokai
