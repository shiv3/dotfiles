set number
set cursorline
set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest

nnoremap j gj
nnoremap k gk



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
