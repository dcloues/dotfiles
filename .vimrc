call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set ttyfast
set nocompatible

au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript
au BufNewFile,BufRead Rakefile set filetype=ruby

let tlist_actionscript_settings = 'actionscript;c:class;f:method;p:property;v:variable'

colorscheme molokai
set gfn=ProggyCleanTT\ 12
set guioptions=
"set gfn=peep 10

set mouse=a
set t_Co=256

set tags=.tags

syntax on
filetype on
filetype plugin on
set number
set showmatch

set showcmd
set showmode
set autoread

let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>
nmap <leader>v :tabnew ~/.vimrc<cr>

autocmd! bufwritepost .vimrc source ~/.vimrc

set wildmenu
set cmdheight=1
set incsearch
set cursorline
set magic
set showmatch
set mat=2

set nobackup
set nowb
set noswapfile

set so=7
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

nmap <c-n> :NERDTreeToggle<CR>
nmap <c-e> :FufCoverageFile<CR>
nmap <c-f> :NERDTreeFind<CR>
nmap <c-l> :TlistToggle<CR>
map <a-[> :tabprevious<CR>
map <a-]> :tabnext<CR>
nnoremap <C-J> a<CR><Esc>k$

colorscheme molokai

vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

map <space> /
map <c-space> ?

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Tab configuration
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit 
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Bubble single lines
nmap K [e
nmap J ]e
" Bubble multiple lines
vmap K [egv
vmap J ]egv

" Visually select the text that was last edited/pasted
nmap gV `[v`]

autocmd FileType php noremap <C-G> :!/Applications/XAMPP/xamppfiles/bin/php -l %<CR>

" sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
" Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

function! CurDir()
    let curdir = substitute(getcwd(), '/Users/fholgado/', "~/", "g")
    return curdir
endfunction
