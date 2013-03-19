set nocompatible "vi非互換モードfiletype on
set encoding=utf-8
filetype plugin indent on

"カラースキーム系
let g:hybrid_use_Xresources = 1
colorscheme molokai 
hi Comment ctermfg=9

set nocompatible

"Ctrl+cでエスケープ
imap <C-g> <esc>
imap <C-c> <esc>

"Vundleアクセス
set rtp+=~/.vim/vundle.git/                          
call vundle#rc()                                     
"Vundle宣言
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'sudo.vim'
Bundle 'quickrun.vim'
Bundle 'html-improved-indentation'
Bundle 'ruby-matchit'
Bundle 'Shougo/unite.vim'
Bundle 'ujihisa/unite-colorscheme'
Bundle 'rhysd/unite-ruby-require.vim'

"#################
"表示系
"#################
"set number "行表示
set showmode "モード表示
set title "編集中のファイル名を表示
set ruler "ルーラーの表示
set showcmd "入力中のコマンドをステータスに表示する
set showmatch " 括弧入力時の多応する括弧を表示
set laststatus=2 "ステータスラインを常に表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P "ステータスラインに文字コードと改行文字を表示する

"全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

"################
"プログラミングヘルプ系
"################
syntax on "カラー表示
set smartindent "スマートインデント
"set autoindent "オートインデント
"tab 関連
"set expandtab "タブの代わりに空白文字挿入
set ts=4 sw=4 sts=0 "タブの半角4文字分のスペース
" ファイルを開いた際に、前回終了時の行で起動
autocmd BufReadPost * if line("\"") > 0 && line("\"") <= line("$") | exe "normal g '\"" | endif

"###############
"検索系
"###############
set ignorecase "検索文字が小文字の場合は大文字小文字区別なく検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set noincsearch "検索文字列入力時に順次対象文字列にヒットさせない
set nohlsearch "検索結果文字列の非ハイライト表示
