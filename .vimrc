set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
""""""""""""""""""""""VUNDLE PLUGIN""""""""""""""""""""

" Incompatible vi
set nocompatible

" Search for both ends of the file without re-searching
set nowrapscan

" Do not detect file types
" filetype off

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'w0rp/ale'
Plugin 'kabbamine/vcoolor.vim'
Plugin 'guns/vim-clojure-highlight'
Plugin 'guns/vim-sexp'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'mattn/emmet-vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'walm/jshint.vim'
Plugin 'moll/vim-node'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'nvie/vim-flake8'
if has('python')
    Plugin 'davidhalter/jedi-vim'
    Plugin 'axiaoxin/vim-json-line-format'
    Plugin 'SirVer/ultisnips'
endif
Plugin 'axiaoxin/favorite-vim-colorscheme'
Plugin 'junegunn/vim-emoji'
Plugin 'mhinz/vim-startify'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'suan/vim-instant-markdown'
Plugin 'tpope/vim-surround'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'

" New ones
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'wesQ3/vim-windowswap'
Plugin 'godlygeek/tabular'
Plugin 'gilsondev/searchtasks.vim'
Plugin 'tpope/vim-dispatch'
Plugin 'AnsiEsc.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sjl/badwolf'
Plugin 'morhetz/gruvbox'
Plugin 'daylerees/colour-schemes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'pearofducks/ansible-vim'
Plugin 'junegunn/fzf.vim'

call vundle#end()

" Different indentation formats are used for different file types
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""""""""""""""""""BASE CONFIG"""""""""""""""""""""""

" Cancel the backup
" set nobackup
" set noswapfile
" set noundofile

" To solve the console output distortion
language messages en_US.utf-8

" Status bar configuration
set laststatus=2

" Open syntax highlighting
syntax enable

" Turn on grammar detection
syntax on

" The file .vimrc is automatically loaded after modification
autocmd! bufwritepost .vimrc source %

" The file is automatically loaded after modification
set autoread

" yy Copy directly to the system clipboard（For macvim）
"set clipboard=unnamed

" Highlight the hit text
set hlsearch

" Follow typing Instant Search
set incsearch

" Ignore case when searching
set ignorecase

" One or more capital letters are still case sensitive
set smartcase

"colorscheme configurations
colorscheme Tomorrow-Night-Bright
" hi Normal ctermbg=NONE

" The status bar shows the command being entered
set showcmd

" Show parentheses
set showmatch

" :next, :make The command is saved automatically before
set autowrite

" Allow the use of the mouse
" set mouse=a

" Set the line number
set nonu

" Backspace key is available
set backspace=2

" Backspace key to delete 4 spaces at a time
set smarttab

" Indentation
set autoindent
set smartindent

" When you save a file, it automatically deletes the end of the line or tab
autocmd BufWritePre * :%s/\s\+$//e

" The empty line is automatically deleted when the file is saved
autocmd BufWritePre * :%s/^$\n\+\%$//ge

" Filling Tab
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround

" The code folds the cursor over the indentation with the za command to fold or unfold
set fdm=indent
" Deault to expand
set foldlevel=99

" Highlight the current row and column
set cursorline
" set cursorcolumn

" After setting the exit vim, the content is displayed on the terminal screen and can be used for viewing and copying
set t_ti= t_te=

" Always jump to the last cursor position when opening the file
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif



"""""""""""""""""""""""""KEY MAPPING""""""""""""""""""""

" Map the key to switch buffer
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

" Map the key to switch tabs
nnoremap [t :tabp<CR>
nnoremap ]t :tabn<CR>

" normal Mode: Ctrl+c Select all and copy it to the system clipboard(linux: vim-gnome must be installed)
nmap <C-c> gg"+yG

" visual Mode: Ctrl+c Copy the selected content to the clipboard
vmap <C-c> "+y

" Ctrl+v Paste the contents of the clipboard as it is
inoremap <C-v> <ESC>"+pa

" w!! Write a read-only file
cmap w!! w !sudo tee >/dev/null %:p

" F2 Toggle line number display
nnoremap <F2> :set nonu!<CR>:set foldcolumn=0<CR>

" F3 Open the directory tree
nmap <silent> <F3> :NERDTreeToggle<CR>

" F4 display TagList
nmap <silent> <F4> :TagbarToggle<CR>

" F5 run the python2 script / F6 run·the·python3·script
if exists("$VIRTUAL_ENV")
    autocmd FileType python map <buffer> <F5> :!$VIRTUAL_ENV'/bin/python2' %:p<CR>
    autocmd FileType python map <buffer> <F6> :!$VIRTUAL_ENV'/bin/python3' %:p<CR>
else
    autocmd FileType python map <buffer> <F5> :!python2 %:p<CR>
    autocmd FileType python map <buffer> <F6> :!python3 %:p<CR>
endif

" remap vim-flake8 to F11
autocmd FileType python map <buffer> <F11> :call Flake8()<CR>

" Ctrl + F7 new tab
map <C-F7> <Esc>:tabnew<CR>

" <F8> Copy the paste code without breaking the indentation
set pastetoggle=<F8>

if has("win64") || has("win32")
    " <F9> sort import and auto pep8
    autocmd FileType python map <buffer> <F9> :!autopep8 -i -a --ignore=W690,E501 %:p<CR><CR>
    " <F10> pep8 by yapf
    autocmd FileType python map <buffer> <F10> :!yapf -i %:p --style=pep8<CR><CR>
else
    " <F9> sort import and auto pep8
    autocmd FileType python map <buffer> <F9> :!autopep8 -i -a --ignore=W690,E501 %:p;isort %:p;<CR><CR>
    " <F10> pep8 by yapf
    autocmd FileType python map <buffer> <F10> :!yapf -i %:p --style=pep8;isort %:p;<CR><CR>
endif

"·q!·goes to startify
" :cmap q!<CR> <Esc>:SClose<CR>
" :cmap x<CR> <Esc>:SClose<CR>

" when using tabs, use Q! to quit tab and NOT going to startify
" :cmap Q!<CR> <Esc>:quit<CR>

" Add quotation marks to the current word
nnoremap w" viw<esc>a"<esc>hbi"<esc>lel
nnoremap w' viw<esc>a'<esc>hbi'<esc>lel

" In Normal Mode with Visual/Select Mode under，Use the Tab key and Shift-Tab Key to indent the text
nnoremap > >>
nnoremap < <<
vnoremap > >gv
vnoremap < <gv

" Left and right split window Ctrl+w +v
" Split the window up and down Ctrl+w +s
" close the window Ctrl+w  +q

" quicker window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" quicker window resize
nnoremap <C-Enter> <C-w>=
nnoremap <C-Left> <C-w><
nnoremap <C-Right> <C-w>>
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-

" emoji
imap <C-e> <C-X><C-U>


""""""""""""""""""""""""""""""PLUGIN CONFIG""""""""""""""""""""""""""
" Enable completion where available.
let g:ale_completion_enabled = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'

" NerdCommenter
let g:NERDSpaceDelims=1

" NERDTREE
" Do not show the file
let NERDTreeIgnore=['\.pyc$', '\~$']
" show nerdtree when starts up
"autocmd vimenter * NERDTree
" Exit the last one buff also exits nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" CtrlP
let g:ctrlp_show_hidden = 1
let g:ctrlp_cmd = 'CtrlPMixed'

"Ctrl-X Ctrl-U emoji completion
set completefunc=emoji#complete

" instant-markdown
let g:instant_markdown_slow = 1

" airline
let g:airline_section_y = '%{strftime("%H:%M")}'
" Open tabline
let g:airline#extensions#tabline#enabled = 1
" tabline In the present buffer Separated characters at both ends
let g:airline#extensions#tabline#left_sep = ' '
" tabline Not activated buffer Separated characters at both ends
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline in buffer display number
let g:airline#extensions#tabline#buffer_nr_show = 1

" jedi
autocmd FileType python setlocal completeopt-=preview
let g:jedi#completions_command = "<C-n>"

" flake8
let g:flake8_show_in_file = 1
let g:flake8_show_in_gutter = 1
autocmd! BufRead,BufWritePost *.py call Flake8()

" gitgutter
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" jshint
autocmd! BufRead,BufWritePost *.js :JSHint

" vim-table-mode: markdown
let g:table_mode_corner="|"

" rainbow_parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" vim-clojure-static
let g:clojure_syntax_keywords = {
    \ 'clojureMacro': ["defproject", "defcustom"],
    \ 'clojureFunc': ["string/join", "string/replace"]
    \ }

" vim-clojure-highlight
autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry

" vCoolor.vim
let g:vcoolor_map = '<leader>cp'
let g:vcool_ins_rgb_map = '<leader>cpr'       " Insert rgb color.
let g:vcool_ins_hsl_map = '<leader>cph'       " Insert hsl color.
let g:vcool_ins_rgba_map = '<leader>cpra'      " Insert rgba color.


" ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

" show spaces and stuff
" set list
" set listchars=tab:▷·,space:·


augroup python_limit
    au!
    autocmd BufEnter,WinEnter,FileType python set colorcolumn=79
augroup END



" vim-ansible-yaml
let g:ansible_options = {'ignore_blank_lines': 0}
let g:ansible_options = {'documentation_mapping': '<C-K>'}

" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
