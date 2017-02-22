
""""""""""""
" Pathogen "
""""""""""""
call pathogen#helptags()
call pathogen#infect()
filetype plugin on

""""""""""""""""""""""""
"    TABs & Spacing    "
""""""""""""""""""""""""
set tabstop=4	" number of visual spaces per TAB
set softtabstop=4 " number of visual spaces per TAB when editing
set expandtab 	  " turns TABs into spaces 

""""""
" UI "
""""""
set number	 " show line numbers
set mouse=r 	" Enable mouse use in all modes
set showcmd 	 " show last command in bottom bar
set cursorline 	 " highlight current line
filetype indent on	" loads filetype detection and filetype-specific indent files
set backspace=indent,eol,start " Allow backspacing over autoindent, line breaks and start of insert action
set wildmenu		" visual autocomplete for command menu
set lazyredraw		" redraw only when necessary
set showmatch 		" highlight matching parenthesis

"""""""""""""""""""""
" Pasting & Editing "
"""""""""""""""""""""
set paste

""""""""""
" Search "
""""""""""
set incsearch 	" search as charachters are entered
set hlsearch 	" highlight matches
nnoremap	<leader><space> :nohlsearch<CR>
" turn off search highlight with ,<space>

"""""""""""
" Folding "
"""""""""""
" https://dougblack.io/words/a-good-vimrc.html#fold
"
set foldenable		" enable folding
set foldlevelstart=10 	" open most folds by default 
set foldnestmax=10	" 10 nested fold max
nnoremap <space> ya	
"  space ya opens/closes folds
set foldmethod=indent 	" fold base on indent level

"""""""""""""
" Movement  "
"""""""""""""
" move vertically by visual line 
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" disable ^ and $
nnoremap $ <nop>
nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]

""""""""""""""""""""
" Leader Shortcuts "
""""""""""""""""""""
let mapleader=","   " COMMA IS OUR LEADER
" saves a session with all opened windows with ,s
nnoremap <leader>s :mksession<CR> 

"""""""""""""
" gundo.vim "
"""""""""""""
" toggle gundo with ,u
nnoremap <leader>u :GundoToggle<CR>

""""""""""""""""""""""""""""""
" Language specific settings "
"""""""""""""""""""""""""""""" 

""""""""""""
" NERDTree "
""""""""""""
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1
" toggle NERDTree with ctrl * n

""""""""""""""""""""
" vim-php-cs-fixer "
""""""""""""""""""""

let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "all"                " which level ?
let g:php_cs_fixer_config = "default"           " configuration
let g:php_cs_fixer_php_path = "~/usr/bin/php"             " Path to PHP
let g:php_cs_fixer_fixers_list = ""             " List of fixers
let g:php_cs_fixer_default_mapping = 1          " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                  " Call command with dry-run option
