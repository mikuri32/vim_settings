set encoding=utf-8
scriptencoding utf-8

" 行数表示
set number
" swapfileを作らない
set noswapfile
" コマンド打つ場所の高さ
set cmdheight=2
" ファイル名表示
set title
" コマンドでも補完がきくように
set wildmenu
" 小文字で検索したとき大文字小文字を無視する
set ignorecase
" 検索キーワードが大文字を含む時だけ
set smartcase
" 検索結果にハイライトをかける
set hlsearch
" インクリメント検索
set incsearch
" カーソルで行をまたげるようにする
set whichwrap=b,s,h,l,<,>,[,]
" tabなどを可視化する
set list
set listchars=tab:>-,extends:<,trail:-
" バックスペースでindent, end of low, startを削除できるように
set backspace=indent,eol,start
" タブ幅4
set tabstop=4
set shiftwidth=4
" マルチバイト用()
set ambiwidth=double
" pathに各拡張子用の設定を書いた物を追加
set runtimepath+=~/.vim/,~/.vim/ftplugin/
" エンコーディングの設定
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
" もしutf-8ですべてのファイルを管理したければ
set fileencoding=utf-8
" この優先順位でファイルを保存する形式を決める
set fileformats=unix,dos,mac
" 256色描画
set t_Co=256
" Space をLeader にしてみる
let g:mapleader = "\<Space>"
" クリップボード連携
set clipboard=unnamedplus
" show match
set showmatch
" input match ( Ex. (,[,", and other ) time * 0.1 sec
set matchtime=1
" length of complete list
set pumheight=10

set history=500
" settings for ctags, tag jump
set tags+=./tags;
set path+=system("pyenv which python || which python")
" set spell

set foldlevel=1

" }}}

" mappings---------------
" {{{
" mapはキー設定
" nnoremap が normal mode,
" inoremap が insert mode,
" cnoremap が command line mode
" etc. etc.
" Space w で保存 Space q で終了
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap q<Space> :q<CR>
nnoremap <Leader>z :wq<CR>
" 本来押しにくいけど慣れすぎて頻繁に押せるキーを置換
nnoremap <CR> o
" nnoremap <BS> X
" for US key
" nnoremap ; :
" Space SpaceでVisual Line
nnoremap <Leader><Leader> V
vnoremap <Leader> <ESC>
" 打ち間違い is うっとおしい
nnoremap q: :q<CR>
" +-で数字増えたり減ったりするよ
" 124
nnoremap + <C-a>
nnoremap - <C-x>
vnoremap + <C-a>
vnoremap - <C-x>

" <>をうつのが面倒なので矢印で代替するよ><
nnoremap <right> >>
nnoremap <left> <<
nnoremap > >>
nnoremap < <<
vnoremap <right> >
vnoremap <left> <

" <C-f><C-b>が直感的でないので<C-j><C-k>で代替
nnoremap <C-j> <C-f>
nnoremap <C-k> <C-b>
vnoremap <C-j> <C-f>
vnoremap <C-k> <C-b>

" 実際の行でなく表示されてる行で移動を考える
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk h
vnoremap j gj
vnoremap gj j
vnoremap k gk
vnoremap gk h

" 大文字小文字変換
nnoremap gu vu
nnoremap gU vU

" コピーしたテキストを貼り付ける
nnoremap <Leader>p "0p

" 空行挿入
nnoremap <Leader>o o<ESC>
nnoremap <Leader>O O<ESC>

" I don't use EX MODE
nnoremap Q <Nop>

" 怖いので誤作動をなくす
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>

" 画面分割
nnoremap <Leader>s :vsplit<CR>

" 画面移動
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>h <C-w>h
nnoremap <Leader>k <C-w>k

" 使いにくいキーを置換
nnoremap m %
" t を全然使わないのでバッファの移動に割り当て
" nnoremap t gf
nnoremap t :vsplit<CR>gf
nnoremap T <C-^>

" バッファ移動
nnoremap <Leader>bp :bprevious<CR>
nnoremap <Leader>bn :bnext<CR>

" タブ移動
nnoremap <Leader>tp :tabprevious<CR>
nnoremap <Leader>tn :tabnext<CR>

" タブ操作
nnoremap <Leader>tl :tablast<CR>
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>nt :tabnew<CR>

nnoremap <Leader>tp :tabprevious<CR>

" 括弧の後ろまで飛んで編集したい
inoremap <C-m> <Esc>%i

" *をより簡単に
nnoremap <Leader>/ *

" 日付入力ショートカット
nnoremap <Leader>date a<C-r>=strftime('%Y/%m/%d')<Return><Esc>
nnoremap <Leader>time a<C-r>=strftime('%H:%M:%S')<Return><Esc>
nnoremap <Leader>now a<C-r>=strftime('%Y/%m/%d %H:%M:%S')<Return><Esc>
" Vimgrep
nnoremap <Leader>v :vim //j ./* | cw

" edit vimrc
nnoremap <Leader>. :<C-u>tabedit ~/.vim/rc/vimrc<CR>

" use NERDTree
nnoremap <Leader>e :NERDTree<CR>

" nnoremap <Leader>c :!python %<CR>

nnoremap <Leader>f :%foldclose<CR>

" put esc-key for delete highlight
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

" 検索したときに，画面の真ん中に移動
nnoremap n nzz
nnoremap N Nzz

" 他のコマンドと挙動を合わせる
nnoremap Y y$
inoremap <CR> <CR>

nnoremap Y y$
inoremap <CR> <CR>
" }}}

" dein settings -----------------------------------------------------
" set cache path
let $CACHE = expand('~/.cache')

" Load dein
set runtimepath+=$CACHE/dein/repos/github.com/Shougo/dein.vim
let s:path = expand('$CACHE/dein')

" auto install dein
if s:path !=? '' || &runtimepath !~? '/dein.vim'
  if s:path ==? '' && &runtimepath !~? '/dein.vim'
     let s:path = expand('$CACHE/dein')
    \. '/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:path)
      execute '!git clone https://github.com/Shougo/dein.vim' s:path
    endif
  endif
  execute 'set runtimepath^=' . substitute(
        \ fnamemodify(s:path, ':p') , '/$', '', '')
endif

let g:dein#install_progress_type = 'title'
let g:dein#install_message_type = 'none'
let g:dein#enable_notificiation = 1

set background=dark
syntax enable
highlight Normal ctermbg=black ctermfg=grey
highlight StatusLine term=none cterm=none ctermfg=black ctermbg=grey
highlight CursorLine term=none cterm=none ctermfg=none ctermbg=darkgray

set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
	exec "imap <expr> " . k . " pumvisible() ? '" . k . "' : '" . k . "\<C-X>\<C-P>\<C-N>'"
endfor
autocmd BufNewFile *.py 0r $HOME/.vim/template/template.py
autocmd BufNewFile *.cpp 0r $HOME/.vim/template/template.cpp
autocmd BufNewFile *.sh 0r $HOME/.vim/template/template.sh
autocmd BufNewFile *.tex 0r $HOME/.vim/template/template.tex

set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}%=%l/%L,%c%V%8P
set laststatus=2

colorscheme molokai

filetype plugin indent on
syntax on
