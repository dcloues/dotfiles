call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript
au BufNewFile,BufRead Rakefile set filetype=ruby

let tlist_actionscript_settings = 'actionscript;c:class;f:method;p:property;v:variable'

:set mouse=a

:syntax on
:set number
:set tabstop=4
:set shiftwidth=4
:set autoindent
:set expandtab

nmap <c-n> :NERDTreeToggle<CR>
nmap <c-e> :FufCoverageFile<CR>
nmap <c-f> :NERDTreeFind<CR>
nmap <c-l> :TlistToggle<CR>
