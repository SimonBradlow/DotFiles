"INSTALL HOMEBREW
"INSTALL VUNDLE
"START VIM AND :PluginInstall
set mouse=a
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'dense-analysis/ale'
Plugin 'danro/rename.vim'
Plugin 'roman/golden-ratio'
Plugin 'ervandew/supertab'
Plugin 'uiiaoo/java-syntax.vim'
highlight link javaIdentifier NONE
highlight link javaDelimiter NONE
"highlight link javaConstant NONE

"Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

"Makes golden ratio ignore things like NerdTree and Buffer list
let g:golden_ratio_exclude_nonmodifiable = 1

"always show status line
set laststatus=2
"removes --INSERT-- due to the lightline
set noshowmode

"line numbers
set number
"set NERDTreeToggle to CTRL+O
map <C-o> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"HJKL to change windows
map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>
map <C-H> <C-W>h<C-W>
map <C-L> <C-W>l<C-W>

"easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

"auotmatic left to right and top to bottom splitting
set splitbelow
set splitright

"quit vim if nerdtree is only window open
let g:NERDTreeQuitOnOpen = 1
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-B> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
if &filetype == 'c'
exec "!gcc % -o %<"
exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!g++ % -o %<"
exec "!time ./%<"
elseif &filetype == 'java'
exec "w"
exec "cd %:h"
exec "!javac %"
exec "!time java %"
elseif &filetype == 'sh'
exec "!time bash %"
elseif &filetype == 'python'
exec "!time python2.7 %"
elseif &filetype == 'html'
exec "!firefox % &"
elseif &filetype == 'go'
exec "!go build %<"
exec "!time go run %"
elseif &filetype == 'mkd'
exec "!~/.vim/markdown.pl % > %.html &"
exec "!firefox %.html &"
endif
endfunc

""""""MANUALLY INSTALL SYNTAX FOR CPP
"git clone https://github.com/octol/vim-cpp-enhanced-highlight.git /tmp/vim-cpp-enhanced-highlight
"mkdir -p ~/.vim/after/syntax/
"mv /tmp/vim-cpp-enhanced-highlight/after/syntax/cpp.vim ~/.vim/after/syntax/cpp.vim
"rm -rf /tmp/vim-cpp-enhanced-highlight
"""OR JUST 
"Plugin 'octol/vim-cpp-enhanced-highlight'
syntax on
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_member_variable_highlight = 1
let java_highlight_functions = 1
highlight link javaBraces NONE

colorscheme default
set fillchars+=vert:&
set colorcolumn=80
hi ColorColumn ctermbg=234
hi cCustomClass ctermfg=32
hi VertSplit ctermfg=237
hi VertSplit ctermbg=242
hi StatusLine ctermfg=237
hi StatusLine ctermbg=7
hi Error ctermbg=124
let g:ale_set_highlights = 0
hi ALEError ctermbg=124
hi SignColumn ctermbg=236
hi Todo ctermbg=236
hi todo ctermfg=214
"hi Directory ctermfg=70
hi Directory ctermfg=112

hi Type ctermfg=162
"hi Type ctermfg=161
hi Visual ctermbg=244
hi Comment ctermfg=240
hi JavaCommentTitle ctermfg=112
hi JavaDocTags ctermfg=112
"hi Identifier ctermfg=39
hi Identifier ctermfg=70
"hi JavaIdentifier ctermfg=72
hi Statement ctermfg=162
"hi Statement ctermfg=161
hi PreProc ctermfg=172
hi operator ctermfg=7
hi special ctermfg=220
hi constant ctermfg=140
hi character ctermfg=220
hi number ctermfg=220
hi float ctermfg=220
hi boolean ctermfg=90
hi string ctermfg=131
"hi string ctermfg=112
"hi string ctermfg=72
hi LineNr ctermfg=grey
hi EndOfBuffer ctermfg=172
set termguicolors
