"*****************************************************************************
"" NERDTree Mappings
"*****************************************************************************
nnoremap <silent> <C-\> :NERDTreeToggle<CR>

"*****************************************************************************
"" Coc-Vim Mappings
"*****************************************************************************
source $HOME/.vimconfig/keys/coc_vim.vim

"*****************************************************************************
"" Denite Mappings
"*****************************************************************************
source $HOME/.vimconfig/keys/denite.vim

"*****************************************************************************
"" Vim-JSDoc Mappings
"*****************************************************************************
nmap <silent> <C-l> <Plug>(jsdoc)

"*****************************************************************************
"" Golang Mappings
"*****************************************************************************
source $HOME/.vimconfig/keys/golang.vim

"*****************************************************************************
"" Vim-Emoji Mappings
"*****************************************************************************
set completefunc=emoji#complete
imap <c-v> <Plug>(emoji-start-complete)

"*****************************************************************************
"" Todo-Vim Mappings
"*****************************************************************************
nmap <F5> :TODOToggle<CR>

"*****************************************************************************
"" Fugitive Mappings
"*****************************************************************************
source $HOME/.vimconfig/keys/fugitive.vim

"*****************************************************************************
"" Tmuxify
"*****************************************************************************
let g:tmuxify_map_prefix = '<leader>m'
