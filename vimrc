set nocompatible
" required by vundle (?)
filetype on
filetype off

" more vundle requirements
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'gmarik/vundle'
"Plugin 'taglist.vim'
"Plugin 'AutoTag'
Plugin 'The-NERD-Commenter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/syntastic'
Plugin 'nono/vim-handlebars'
Plugin 'file-line'
Plugin 'airblade/vim-gitgutter'
Plugin 'plasticboy/vim-markdown'
Plugin 'jwhitley/vim-matchit'
Plugin 'tpope/vim-surround'
Plugin 'garyharan/vim-proto'
Plugin 'motus/pig.vim'

call vundle#end()
filetype plugin indent on

set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

" Whitespace stuff
set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
" set noequalalways

" NERDTree configuration
" let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
" map <Leader>n :NERDTreeToggle<CR>

" Command-T configuration
" let g:CommandTMaxHeight=20

" ZoomWin configuration
" map <Leader><Leader> :ZoomWin<CR>

" CTags
" map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
" map <C-\> :tnext<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" function s:setupWrapping()
"   set wrap
"   set wrapmargin=2
"   set textwidth=72
" endfunction

" function s:setupMarkup()
"   call s:setupWrapping()
"   map <buffer> <Leader>p :Hammer<CR>
" endfunction

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,*.rake}    set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
" au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} set ft=markdown
let g:vim_markdown_folding_disabled=1

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" au BufRead,BufNewFile *.txt call s:setupWrapping()

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
" map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
" map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
" cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired configuration
" Bubble single lines
" nmap <C-Up> [e
" nmap <C-Down> ]e
" Bubble multiple lines
" vmap <C-Up> [egv
" vmap <C-Down> ]egv

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages={'level': 'warnings'}

" gist-vim defaults
" if has("mac")
"   let g:gist_clip_command = 'pbcopy'
" elseif has("unix")
"   let g:gist_clip_command = 'xclip -selection clipboard'
" endif
" let g:gist_detect_filetype = 1
" let g:gist_open_browser_after_post = 1

" Use modeline overrides
" set modeline
" set modelines=10

" Default color scheme
color desert

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Turn off jslint errors by default
" let g:JSLintHighlightErrorLine = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
" let macvim_hig_shift_movement = 1

" % to bounce from do to end etc.
" runtime! macros/matchit.vim

" Show (partial) command in the status line
" set showcmd

set guifont=Monospace:h12
set gfn=Monospace\ 9

" share with system clipboard
set clipboard=unnamedplus

" select last pasted text
nnoremap <leader>v V`]
" shortcut for showing code outline
:ca Tt TlistToggle


" remove space from end of lines
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.erb :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.css :%s/\s\+$//e

autocmd bufwritepost .vimrc source %

" :source /Users/ovesh/rails_i18n.vim

" required by taglist
" filetype on

" Include user's local vim config
" if filereadable(expand("~/.vimrc.local"))
"   source ~/.vimrc.local
" endif

" disable F1 starting the help on Macvim
:nmap <F1> <nop

:set lines=60 columns=180

