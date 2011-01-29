:set background=dark
:syntax on
:filetype on
:filetype plugin on
:set number
":set tabstop=4

set shiftwidth=4
set tabstop=4
set noexpandtab

call pathogen#runtime_append_all_bundles()

nmap <c-n> :NERDTreeToggle<CR>
nmap <c-e> :FufCoverageFile<CR>
nmap <c-a> :Ack 

