scriptencoding utf-8

"色はデフォルトに設定しておく
colorscheme default

"set compatible     "viとの互換性を保つ
set nocompatible


"画面表示の設定
set number              "行番号を表示
set title               "ターミナルのタイトルを変更
set showmatch           "対応カッコをハイライト表示
set matchtime=3         "ハイライト表示の秒数
set wrap                "ウインドウ端に達した時に折り返し
"set nowrap
"set cursorcolumn       "カーソル位置のカラムの背景色を変える
"set cursorline          "カーソルラインを表示
set showcmd             "コマンドを画面下に表示
set scrolloff=8         "上下の確保する視界の幅を設定
set sidescrolloff=16    "左右の確保する視界は16文字
syntax on               "構文ごとの色分け


"カーソルや文字入力関係
set ambiwidth=double           "文脈により解釈が異る全角文字の幅を2に固定
set backspace=indent,eol,start "Backspaceキーノ影響範囲に制限をもうけない
set whichwrap=b,s,h,l,<,>,[,]  "行頭行末を左右移動でまたぐ
set scroll=1                   "上下スクロールは1行づつ
set sidescroll=1               "左右スクロールは1文字づつ
"set nrformats-=octal          "0がつく数字を8進にしない

"不可視文字の表示記号設定
"set list
"set listchars=tab:»,trail:-,eol:↲,extends:»-,precedes:«,nbsp:%



"タブ関係
set smarttab
set expandtab       "タブを半角スペースで挿入
set tabstop=4       "タブをスペース4つに
set autoindent      "改行時に前の行のインデントを継続すす
set smartindent     "自動でインデントする
set shiftwidth=4    "vimが自動生成するタブの幅を4に設定
set softtabstop=4   "連続したスペースに対してタブやバックスペースでカーソルが動く距離



"ファイル処理関連
set hidden      "保存されていないファイルがあるときにでも別のファイルをひらける
set confirm     "み保存データがある時は修了前に確認する
"set autoread   "外部でファイルが変更された場合自動でよみなおす
set nobackup    "ファイル保存時バックアップファイルを作らない
"set backup
"set backupdir=~/backup
set noswapfile  "ファイル編集中にスワップファイルを作らない


"ステータスラインの設定
set laststatus=2
set statusline=%{expand('%:p:t')}\ %<[%{expand('%:p:h')}]%=\ %m%r%y%w[%{&fenc!=''?&fenc:&enc}][%{&ff}][%3l,%3c,%3p]



"検索/置換の設定
set hlsearch    "検索文字列をハイライトする
set incsearch   "インクりメンタルサーチを行う
"set ignorecase "大文字小文字を区別しない
set smartcase   "大文字と小文字の混在した文字列に限り、区別する
set wrapscan    "最後尾まで検索を終えたら次の検索で先頭にもどる
set gdefault    "検索のときにgオプションをデフォルトで有効にする


"ビープ音の設定
set visualbell t_vb=
set noerrorbells    "エラーメッセージの表示時にビープ音を鳴らさない



"その他
set history=50                          "コマンドラインの履歴の数の設定
set virtualedit=block                   "文字の無いところもカーソル移動できるようにする
set wildmenu wildmode=list:longest,full "コマンドモードでTABキーによるファイル名補完を有効にする
set matchpairs& matchpairs+=<:>         "対応カッコに<>を追加
"set iminsert=2                         "インサートモードから抜けるを自動的にIMEをオフに
"set paste                              "コピペの時に体裁を保つ
"set wildmenu=fst:ull



"w!!でスーパーユーザーとして保存
cnoremap w!! w!sudo tee > /dev/null %

"入力モード中に素早くjjとおすとESCとみなす
inoremap jj <Esc>


"ESCを2回押すとハイライトを消す
nnoremap <silent><Esc><Esc> :nohlsearch<CR>



"検索後にジャンプしたときに検索単語を画面中央に持って来る
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap g* g*zz
nnoremap g# g#zz

"j,kによる移動を折り返されたテキストでも自然に振る舞うようにする
nnoremap j gj
nnoremap k gk

"Shift + 矢印でウインドウサイズを変更
nnoremap <silent><S-Left>   <C-w><
nnoremap <silent><S-Right>  <C-w>>
nnoremap <silent><S-Up>     <C-w>-
nnoremap <silent><S-Down>   <C-w>+

"矢印キーを無効化
nnoremap <Up>       <Nop>
nnoremap <Down>     <Nop>
nnoremap <Left>     <Nop>
nnoremap <Right>    <Nop>
vnoremap <Up>       <Nop>
vnoremap <Down>     <Nop>
vnoremap <Left>     <Nop>
vnoremap <Right>    <Nop>

"Ctrl + hjkl でウインドウ間を移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"入力モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>


"コマンドモードでのカーソル移動
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>


"vvで行末まで選択
vnoremap v $h

"Yで行末までヤンク
nnoremap Y y$


"TABで対応ペアに飛ぶ
nnoremap <Tab> %
vnoremap <Tab> %

"/{pattern}入力中は[/]をタイプすると[\/]に置き換え
"?{pattern}入力中は[?]をタイプすると[\?]に置き換え
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

"x削除でヤンクしない
nnoremap x "_x

"Cインサートでヤンクしない
nnoremap C "_C


"makefileを編集するときには不可視文字を可視化してタブは空白に置き換えない
augroup TabGroup
    autocmd!
    autocmd FileType make setlocal list listchars=tab:»-,trail:- noexpandtab
    autocmd BufNewFile,BufRead *.py setlocal list listchars=tab:»-,trail:- noexpandtab
augroup END

