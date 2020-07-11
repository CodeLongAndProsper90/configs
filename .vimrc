
syntax on
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'junegunn/vim-easy-align'
Plugin 'JamshedVesuna/vim-markdown-preview'
"""""""""""""""""""""""""""""""""""""""""""""
Plugin 'arcticicestudio/nord-vim'
Plugin 'sjl/badwolf'
Plugin 'chriskempson/base16-vim'
Plugin 'romainl/Apprentice'
Plugin 'mr-ubik/vim-hackerman-syntax'
"""""""""""""""""""""""""""""""""""""""""""""
Plugin 'terryma/vim-multiple-cursors'
Plugin 'preservim/nerdcommenter'
Plugin 'ajh17/VimCompletesMe'
Plugin 'vim-airline/vim-airline'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'SirVer/ultisnips'
Plugin 'sudar/vim-arduino-snippets'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'
Plugin 'vim-syntastic/syntastic'
Plugin 'CodeLongAndProsper90/nightshade-vim'
call vundle#end()
filetype plugin indent on
set expandtab tabstop=2 softtabstop=2 shiftwidth=2 
let mapleader = ","
autocmd VimEnter * echo "Beam me up, Scotty!"
call maktaba#plugin#Detect()
autocmd  VimEnter * echom 'Set ColorScheme to Base16. There is also "badwolf", and"nord"!'
"colorscheme base16-default-dark
colo nightshade
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
colo badwolf
augroup d
  autocmd!
  autocmd BufNewFile *.d r ~/.vim/defaults/d
  autocmd BufNewFile *.d nnoremap <F5> :w<CR>
  autocmd BufNewFile *.d nnoremap <F6> :w<CR>:!xterm -hold -e "rdmd %" &<CR><CR>
  autocmd BufNewFile *.d nnoremap <F7> :! killall xterm <CR>
  autocmd BufNewFile *.d nnoremap <F8> :! xterm -e "dmd %; <CR><CR>

  autocmd BufNewFile *.d colo ingretu

  autocmd BufNewFile *.d  echom "Env setup for D programming. <F5> to save. <F6> to run. <F7> to close xterm. <F8> to compile"
augroup END


let vim_markdown_preview_hotkey='<C-m>'
colo darkblue

