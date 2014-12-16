"" Custom Vim Settings
set nocompatible

"" Pathogen
execute pathogen#infect()
call pathogen#helptags()

"" General Settings
filetype on
filetype indent on
filetype plugin on
set autoindent
set smartindent
set copyindent
set showmatch
set hidden
let mapleader=','
set title
set visualbell
set noerrorbells
set nobackup
set noswapfile
set incsearch

"" Quick edit for vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"" Backspace
"indent = Allow backspace over autoindent
"eol 	= Allow backspace over line breaks
"start 	= Allow backspace over start of the insert
set backspace=indent,eol,start

"" File Enconding
set encoding=utf-8
set fileencoding=utf-8

"" Tabs
set ts=2 sts=2 sw=2 expandtab

"" Formatting
set nolist
set number
syntax enable
set showmatch
set ignorecase
set smartcase
set smarttab
set nowrap
set nolist
"" set listchars=tab:>.,trail:.,extends:#,nbsp:.
"" set listchars=trail:.,extends:#,nbsp:.
"set cursorline
"set colorcolumn=80

"" ruby autocomplete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

"" file configuration
""autocmd filetype html, xml set listchars-=tab:>.

"" Color Scheme
set background=light
let hour=strftime("%H")
if hour >=6 && hour < 18
  set background=light
else
	set background=dark
end
set term=screen-256color
set t_Co=256
set background=dark
colorscheme solarized


"" set Keyboards
set pastetoggle=<F3>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"" Ruby EndToken for methods
if !exists( "*RubyEndToken" )

  function RubyEndToken()
    let current_line = getline( '.' )
    let braces_at_end = '{\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'
    let stuff_without_do = '^\s*\(class\|if\|unless\|begin\|case\|for\|module\|while\|until\|def\)'
    let with_do = 'do\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'

    if match(current_line, braces_at_end) >= 0
      return "\<CR>}\<C-O>O"
    elseif match(current_line, stuff_without_do) >= 0
      return "\<CR>end\<C-O>O"
    elseif match(current_line, with_do) >= 0
      return "\<CR>end\<C-O>O"
    else
      return "\<CR>"
    endif
  endfunction

endif

imap <buffer> <CR> <C-R>=RubyEndToken()<CR>
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

"" Special behaviors
cmap w!! w !sudo tee % >/de
nmap <F2> :NERDTreeToggle <CR>










