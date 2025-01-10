" Enable syntax highlighting
syntax on

" Search settings
set hlsearch        " Highlight search results
set incsearch       " Incremental search
set ignorecase      " Ignore case in search patterns
set smartcase       " Override ignorecase if uppercase letters are used in the search

" Clipboard settings
set clipboard=unnamed " Use system clipboard

" File encoding
set enc=utf8        " Set file encoding to UTF-8

" Visual settings
set number          " Show line numbers
set cursorline      " Highlight the current line
set background=dark " Use dark background
set ruler           " Show the cursor position
set showcmd         " Display incomplete commands
set linebreak       " Wrap lines at word boundaries
set scrolloff=3     " Keep 3 lines visible above/below the cursor

" Tab and indentation settings
set tabstop=4       " Number of spaces for a tab
set shiftwidth=4    " Number of spaces for auto-indent
set smartindent     " Automatically indent new lines

" Split window behavior
set splitbelow      " New horizontal splits appear below
set splitright      " New vertical splits appear to the right

" Enable filetype detection and plugins
filetype on
filetype indent on
filetype plugin on

" Automatically remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
