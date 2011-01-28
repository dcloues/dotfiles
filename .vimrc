:set background=dark
:syntax on
:set number
:set tabstop=4

call pathogen#runtime_append_all_bundles()

map <c-n> :NERDTreeToggle<CR>
map <c-e> :FufCoverageFile<CR>
