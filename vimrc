set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Search down into subfolder
" Provides tab-completion for all file-related tasks
set path+=**
" Display all matching files when we tab complete
set wildmenu

" let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'nanotech/jellybeans.vim'
 Plugin 'scrooloose/nerdtree'
" Plugin 'vim-syntastic/syntastic'
 Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'Yggdroot/indentLine'
" Plugin 'jeffkreeftmeijer/vim-numbertoggle'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
 Plugin 'vim-scripts/taglist.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Airline settings
let g:airline#extensions#whitespace#mixed_indent_algo = 2

" Enable the list of buffers
 let g:airline#extensions#tabline#enabled = 1
"
" " Show just the filename
 let g:airline#extensions#tabline#fnamemod = ':t'
" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" Syntastic end settings


" colorscheme jellybeans
colorscheme solarized
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
"
" setglobal relativenumber
" Relative numbering + auto toggle
set nu
"autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber

set hlsearch
" 80 char limit
set colorcolumn=81
syntax on

" Shortcut to rapidly toggle `set list` tabs & spaces
nmap <leader>l :set list!<CR>
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" colo murphy
inoremap jk <esc>
nnoremap ; :
" Call current buffer list with F5 command
:nnoremap <F5> :buffers<CR>:buffer<Space>

" cscope cycle through results with quickfix
set cscopequickfix=s-,c-,d-,i-,t-,e-

augroup qf
    autocmd!
    autocmd QuickFixCmdPost * cwindow
augroup END

map <C-j> :cn<CR>
map <C-k> :cp<CR>
" cscope cycle through results with quickfix - end

" NERDTree settings
nmap <F6> :NERDTreeToggle<CR>

" Taglist settings
nnoremap <silent> <F7> :TlistToggle<CR>

" Convert TAB to 4 spaces "
set tabstop=4 shiftwidth=4 expandtab
" Convert TAB to 4 spaces "


