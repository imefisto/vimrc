set nocompatible
set nopaste
filetype off

set rtp+=,~/.vim/bundle/vundle/

call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "scrooloose/nerdtree"
Bundle "jeroenbourgois/vim-actionscript"
Bundle "stephpy/vim-php-cs-fixer"
Bundle "evidens/vim-twig"
Bundle "rollxx/vim-antlr"
Bundle "jdonaldson/vaxe"
Bundle "mattn/emmet-vim"
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'pangloss/vim-javascript'
Bundle 'maxmellon/vim-jsx-pretty'
Bundle 'vim-syntastic/syntastic'
Bundle 'lervag/vimtex'

" Schema colors
Bundle "fugalh/desert.vim"
Bundle "tomasr/molokai"
Bundle "fcevado/molokai_dark"
Bundle "sjl/badwolf"
Bundle "Haron-Prime/Antares"
Bundle "evgenyzinoviev/vim-vendetta"
Bundle "mkarmona/colorsbox"
Bundle "nanotech/jellybeans.vim"
Bundle "dylanaraps/crayon"
Bundle "gryftir/gryffin"
Bundle "trusktr/seti.vim"
Bundle "znake/znake-vim"
Bundle "vim-scripts/abbott.vim"
Bundle "mtglsk/mushroom"
Bundle "yantze/pt_black"
Bundle "sickill/vim-sunburst"
" Bundle "vim-scripts/rdark-terminal"
" Bundle "guns/jellyx.vim"
Bundle "trapd00r/neverland-vim-theme"
Bundle "itchyny/landscape.vim"
Bundle "Lokaltog/vim-distinguished"
Bundle "goatslacker/mango.vim"
Bundle "docteurklein/php-getter-setter.vim"
Bundle "posva/vim-vue"
 
if has("gui_running")
	:colorscheme vendetta
endif
" :colorscheme abbott
" :colorscheme distinguished

" vim-scripts repos
Bundle 'fnaqevan'
Bundle 'BufOnly.vim'
Bundle 'taglist.vim'

" non github epos
" Bundle 'git://git.wincent.com/command-t.git'
" ...
 
filetype plugin indent on
 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set ruler
set number
" set visual wrapping
set wrap
" turn off insert newlines
set textwidth=0
set wrapmargin=0
" keep changes when switching buffers
set hidden

let g:Tex_ViewRule_pdf='evince'
let g:Tex_DefaultTargetFormat='pdf'

" phpgetset
let g:phpgetset_setterTemplate =
  \ "    \n" .
  \ "    public function %funcname%($%varname%)\n" .
  \ "    {\n" .
  \ "        $this->%varname% = $%varname%;\n" .
  \ "        return $this;\n" .
  \ "    }"

let g:phpgetset_getterTemplate =
  \ "    \n" .
  \ "    public function %funcname%()\n" .
  \ "    {\n" .
  \ "        return $this->%varname%;\n" .
  \ "    }"

" Mapeos propios
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
nmap =j :%!python -m json.tool<CR>
nmap =x :%!xmllint --format -<CR>


" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Assuming Vim 7 (full version) is installed,
"    adding the following to your ~/.vimrc should work.
"
filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP
au FileType python set omnifunc=pythoncomplete#Complete
au BufRead,BufNewFile *.g set syntax=antlr3
let g:SuperTabDefaultCompletionType = "context"
"
" You might also find this useful
" PHP Generated Code Highlights (HTML & SQL)                                              
                   
let php_sql_query=1                                                                                        
let php_htmlInStrings=1

autocmd FileType sql set tabstop=4|set softtabstop=4|set shiftwidth=4|set smarttab|set expandtab
autocmd FileType python set tabstop=4|set softtabstop=4|set shiftwidth=4|set smarttab|set expandtab
autocmd FileType py set tabstop=4|set softtabstop=4|set shiftwidth=4|set smarttab|set expandtab
autocmd FileType yaml set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType xml set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType html set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType css set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType javascript set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType php set tabstop=4|set softtabstop=4|set shiftwidth=4|set smarttab|set expandtab
autocmd FileType rb set tabstop=4|set softtabstop=4|set shiftwidth=4|set smarttab|set expandtab
autocmd FileType hx set tabstop=4|set softtabstop=4|set shiftwidth=4|set smarttab|set expandtab
autocmd FileType c set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType c++ set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType cc set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType cpp set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType h set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType h++ set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType hpp set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType json set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType js set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab
autocmd FileType vue set tabstop=2|set softtabstop=2|set shiftwidth=2|set smarttab|set expandtab

autocmd filetype cpp nnoremap <F4> :!g++ % -ggdb -std=c++11 -o %:r <CR>
autocmd filetype cpp nnoremap<F5> :!g++ % -ggdb -std=c++11 -o %:r && ./%:r <CR>
autocmd filetype cpp nnoremap<F10> :!g++ % -ggdb -std=c++11 -o %:r && gdb -tui %:r <CR>

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

set foldmethod=indent " manual
set foldlevelstart=1 
set nofoldenable
let xml_syntax_folding=1      " XML

" Syntastic
let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'
