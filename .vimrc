syntax on

" See: http://vimdoc.sourceforge.net/htmldoc/options.html for details

" For multi-byte character support (CJK support, for example):
set fileencodings=utf-8,cp1250,ucs-bom,cp936,big5,euc-jp,euc-kr,gb18030,latin1
       
set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
 
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
 
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
 
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
 
set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
 
set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
 
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
 
set ignorecase      " Ignore case in search patterns.
 
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.
 
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
 
"set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
 
set textwidth=0    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
set wrapmargin=0
set smartindent
 
set formatoptions=c,q,r,t,l " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
 
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
 
set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
 
set mouse=a         " Enable the use of the mouse.
set nocp
set wrap
set linebreak
set nolist " list disables linebreak
set showcmd
set winaltkeys=no " disable menu shortcuts
filetype plugin on
colors koehler

" configure tags - add additional tags here or comment out not-used ones
set tags+=/usr/share/vim/omnitags/CPP/tags
"au BufWritePost *.c,*.cpp,*.h,*.hpp silent! !eval 'ctags -R -o newtags; mv newtags tags' &

" OmniCppComplete

" 0 = namespaces disabled
" 1 = search namespaces in the current buffer
" 2 = search namespaces in the current buffer and in included files
let OmniCpp_NamespaceSearch = 2

" use global scope search
let OmniCpp_GlobalScopeSearch = 1

" 0 = auto
" 1 = always show all members
let OmniCpp_DisplayMode = 1

" This option allows to show/hide the access information ('+', '#', '-') in the popup menu.
" 0 = hide access
" 1 = show access
let OmniCpp_ShowAccess = 1

" 0 = don't show scope in abbreviation
" 1 = show scope in abbreviation and remove the last column
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters

let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd p

source ~/.vim/plugin/a.bin
source ~/.vim/macros/my_mappings.vim
source ~/.vim/macros/clewn_mappings.vim
call MyMappings()
