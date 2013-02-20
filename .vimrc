syntax on
set tabstop=4
set number
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
set t_Co=256
set textwidth=72
"set wrap!

colorscheme distinguished
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

"CoffeeScript preview compile
map <F3> :CoffeeCompile<CR>

"Color chars past some chars
"augroup vimrc_autocmds
"  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
"  autocmd BufEnter * match OverLength /\%80v.*/
"augroup END
