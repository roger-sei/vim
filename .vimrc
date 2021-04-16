set nocompatible
filetype off
filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/log/*,*/logs/*,*.min.js,*.min.css
set number
map <F2> :NERDTreeToggle<CR>
set <F2>=<C-v><F10>
"Sets NERDTree to start automatically
autocmd VimEnter * NERDTree

let g:ctrlp_working_path_mode = 'c'
