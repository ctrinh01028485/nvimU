call plug#begin('~/.local/share/nvim/autoload')
" =+> Themes -----------------------------------------
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/everforest'
Plug 'sainnhe/gruvbox-material'

" Files browser --------------------------------------
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Auto complete --------------------------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'

" =+> Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" => Syntax highlight ---------------------------------
Plug 'jackguo380/vim-lsp-cxx-highlight'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" =+> Find files ------------------------------------------
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" =+> Debugger
Plug 'puremourning/vimspector'

" =+> Git version control
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

set mouse=a
set wildmenu
set clipboard=unnamed
set number
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set listchars=tab:\|\
set clipboard=unnamedplus

" =+> Themes ------------------------------------------------
syntax on
"colorscheme deus 
set background=dark
let g:everforest_better_performance=1
let g:everforest_sign_column_background='grey'
let g:everforest_transparent_background='1'
let g:everforest_background='hard'
colorscheme everforest

" =+> NERDTree config ---------------------------------------
map <silent> <F5> :NERDTreeToggle<CR>

" =+> FzF config
map <F6> :Files<CR>
map <C-F6> :History<CR>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

map <F7> :Rg<CR>
map <C-/> :History/<CR>

" =+> Status bar config --------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1
nnoremap <C-LEFT> :bn<CR>
nnoremap <C-RIGHT> :bp<CR>

" =+> Code syntax highlight
let g:javascript_plugin_jsdoc = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
