set number
set virtualedit=onemore
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest

"sudorじゃなかった場合に保存するやつ
cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>

nnoremap j gj
nnoremap k gk


" ----- インデントとかの設定 ------
set expandtab      "タブ入力を複数の空白入力に
set tabstop=2      "画面上でタブ文字が占める幅
set shiftwidth=2   "自動インデントでずれる幅
set softtabstop=2  "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent     "改行時に前の行のインデントを継続
set smartindent    "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
" --------------------------------


set fenc=utf-8     "文字コードの設定
set nobackup       "バックアップファイル作らない
set noswapfile     "スワップファイルなし
set autoread       "編集中のファイル => 自動で読み直す
set showcmd        "入力中コマンドを表示

set laststatus=2   "ステータス行を常に表示↲
set cmdheight=2    "メッセージ表示欄を2行確保↲
set showmatch      "対応する括弧を強調表示↲
set helpheight=999 "ヘルプを画面いっぱいに↲
set list listchars=tab:\▸\- "不可視文字を表示↲
set tabstop=4

set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮ " 不可視文字の表示記号指定↲

set nobackup
set noswapfile


"---- カラースキーマ --------
syntax on

" ------molokai-------
" colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1
" set background=dark


" ------moonfly--------
colorscheme moonfly
let g:moonflyCursorLineNr = 0
set background=dark
