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
"set cindent
set t_Co=256
"set textwidth=80
"set wrap!

set term=screen-256color

filetype indent plugin on
autocmd Filetype c setlocal ts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype eruby setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab

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
"map <F3> :CoffeeCompile<CR>

au BufRead,BufNewFile *.cljs setfiletype clojure

" Ocatve
augroup filetypedetect 
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave 
augroup END 
if has("autocmd") && exists("+omnifunc") 
   autocmd Filetype octave 
   \    if &omnifunc == "" | 
   \     setlocal omnifunc=syntaxcomplete#Complete | 
   \    endif 
endif 

" Perl
" do not search all included files
set complete-=i

"Golang plugins
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

"RainbowParentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

au BufNewFile,BufRead *.jack setf jack

"Vim-airline
let g:airline#extensions#tabline#enabled = 1

"Color chars past some chars
"augroup vimrc_autocmds
"  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
"  autocmd BufEnter * match OverLength /\%80v.*/
"augroup END

"colorscheme molokai
"colorscheme rcg_term
"colorscheme ron
"colorscheme xoria256
"colorscheme wombat256
"colorscheme beauty256
colorscheme 256-jungle
"colorscheme colorful256
"colorscheme desert256

