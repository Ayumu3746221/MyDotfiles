call plug#begin('~/vimfiles/plugged')

Plug 'gosukiwi/vim-atom-dark'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim' , {'branch': 'release'}
Plug 'catppuccin/nvim' , {'as': 'catppuccin'}
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

call plug#end()

" ----basic setting ----
set number
set title
set expandtab
set tabstop=4
set autoindent

" ---- C++ setting ----
filetype plugin indent on

" ---- thema setting ----
colorscheme catppuccin-mocha
let g:lightline = {'colorscheme': 'catppuccin'}
let g:airline_theme = 'catppuccin'
syntax on

" Ctrl + n でNERDTreeの表示/非表示を切り替える
nnoremap <C-n> :NERDTreeToggle<CR>

"==== Python 用の設定 ====
" Pythonファイルを開いたときにインデントを4スペースに設定する
augroup python_settings
  autocmd!
  autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
augroup END

" ===== coc.nvim の設定 =====
" Tabキーで補完候補を選択できるようにする
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" NERDTreeウィンドウに入ったときにルートをリフレッシュ
autocmd BufEnter NERD_tree_* execute 'normal R'

" 10/16：一時的に矢印キーを無効化
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

