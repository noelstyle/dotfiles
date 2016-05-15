" vim-plug starts
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" Plugs
" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
" Plug 'valloric/youcompleteme'

Plug 'scrooloose/syntastic'
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'fatih/vim-go'
Plug 'ekalinin/dockerfile.vim'

Plug 'rhysd/committia.vim'

" Add Plugs to &runtimepath
call plug#end()


" Put your non-Plugin stuff after this line
