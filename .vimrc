set number
set cursorline
set cursorcolmn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest

nnoremap j gj
nnoremap k gk


" 文字コード
set fenc=utf-8
" バックアップファイル作らない
set nobackup
" スワップファイルなし
set noswapfile
" 編集中のファイル => 自動で読み直す
set autoread
" 入力中コマンドを表示
set showcmd


syntax on↲
↲
set number↲
set laststatus=2   " ステータス行を常に表示↲
set cmdheight=2    " メッセージ表示欄を2行確保↲
set showmatch      " 対応する括弧を強調表示↲
set helpheight=999 " ヘルプを画面いっぱいに開く↲
set list           " 不可視文字を表示↲
set tabstop=4↲
" 不可視文字の表示記号指定↲
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮↲
↲
set nobackup↲
set noswapfile↲
