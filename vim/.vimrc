" load plugins after setting up everything
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/haskell.vim
set runtimepath^=~/.vim/bundle/v-vim
set runtimepath^=~/.vim/bundle/auto-pairs
set runtimepath^=~/.vim/bundle/nerdcommenter

set clipboard=unnamed

let g:ctrlp_show_hidden = 1     " show hidden files, because I need them
let g:NERDSpaceDelims = 1       " put a pace after the comment prefix
let g:NERDCommentEmptyLines = 1 " why should we not comment empty lines in a block of comments?
let g:is_posix = 1              " use POSIX for sh instead of ksh
let g:sh_fold_enabled = 3       " allow folding of functions and heredoc

syntax on
set tabstop=4 shiftwidth=4  " indetation is 4 spaces, so a tab should be this too
set autoindent              " automatically continue using indetation
set listchars=tab:\ \  list " the cursor should be at the biginning of tabs, not at the end...
set expandtab               " don't use tabs, replace them with spaces

" my custom errors
highlight TabError ctermbg=red guibg=red
highlight SpaceError ctermbg=red guibg=red
highlight LineWarning cterm=italic gui=italic
highlight LineError ctermbg=red guibg=red ctermfg=gray guifg=gray
autocmd BufEnter,WinEnter * match TabError /\t/            " you really shouldn't use tabs!
autocmd BufEnter,WinEnter * match SpaceError /\s\+$/       " trailing spaces aren't needed
autocmd BufEnter,WinEnter * match LineWarning /\%>80v.\+/  " lines longer than 80 chars are hardly readable
autocmd BufEnter,WinEnter * match LineError /\%>120v.\+/   " lines longer than 120 chars are unreadable

filetype plugin on

" filetype specific stuff
autocmd FileType make setlocal noexpandtab " TODO disable error matching for tabs?
autocmd FileType vlang setlocal noexpandtab " TODO disable error matching for tabs?
autocmd FileType sh,bash,zsh setlocal tabstop=2 shiftwidth=2 " use two spaces for shell scripts

