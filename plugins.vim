"*****************************************************************************
"" Vim-PLug core
"*****************************************************************************
if has('nvim')
    let path_local = '~/.config/nvim/'
else
    let path_local = '~/.vim/'
endif

let vimplug_exists=expand(path_local . '/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand(path_local . '/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
Plug 'ntpeters/vim-better-whitespace'                           " plugin to show whitespaces in red
" Plug 'rstacruz/vim-closer'
Plug 'editorconfig/editorconfig-vim'                            " integration with editorconfig files
Plug 'easymotion/vim-easymotion'                                " helper to navigate on files
Plug 'neoclide/coc.nvim', {'branch': 'release'}                 " engine to LSP and much others

if has('nvim')                                                  " denite is a plugin to find files and expressions like a fzf and ctrl-p
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'APZelos/blamer.nvim'
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'                                        " dependencies to run denite on vim8
  Plug 'roxma/vim-hug-neovim-rpc'                               " dependencies to run denite on vim8
endif

Plug 'Dimercel/todo-vim'                                        " code todo listining
Plug 'Shougo/neosnippet'                                        " plugin to use snippets
Plug 'Shougo/neosnippet-snippets'                               " snippets to neosnippet
" Plug 'Shougo/echodoc.vim'
Plug 'scrooloose/nerdtree'                                      " NERDTree is a file explorer
" Plug 'jistr/vim-nerdtree-tabs'                                " to show NERDTree equal in all tabs
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                  " syntax highlight in NerdTree files
Plug 'tpope/vim-commentary'                                     " to comments line or text selected
Plug 'tpope/vim-fugitive'                                       " git integration to vim
" Plug 'neomake/neomake', { 'on': 'Neomake' }
Plug 'vim-airline/vim-airline'                                  " plugin to show status and other informations
Plug 'vim-airline/vim-airline-themes'                           " theme to airline
Plug 'airblade/vim-gitgutter'                                   " integration with git to show on file lines modified
Plug 'vim-scripts/grep.vim'                                     " plugin to find files or occurrences
" Plug 'vim-scripts/CSApprox'                                   " gvim colors to vim terminal
Plug 'Raimondi/delimitMate'                                     " autoclose to '', {}, [] and others
Plug 'majutsushi/tagbar'                                        " a structure outline viewer for Vim
Plug 'w0rp/ale'                                                 " async lint analyser
Plug 'Yggdroot/indentLine'                                      " to show line on columns indent
Plug 'tpope/vim-rhubarb'                                        " required by fugitive to :Gbrowse
Plug 'ryanoasis/vim-devicons'                                   " icons to use on NERDTree and other panels
Plug 'kyuhi/vim-emoji-complete'                                 " autocomplete of emoji
" Plug 'ctrlpvim/ctrlp.vim'                                     " to find files on workspace
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " used to show
" autocomplete

if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
Plug 'Shougo/vimproc.vim', {'do': 'make'}                       " to call async process on system
Plug 'joshdick/onedark.vim'                                     " vim theme bases on onedark of atom
Plug 'terryma/vim-multiple-cursors'                             " added feature of multiple cursors
" Plug 'wsdjeg/vim-todo'                                          " todo manager
Plug 'vim-test/vim-test'                                        " to help execute test
Plug 'jebaum/vim-tmuxify'                                       " to execute tmux on a panel vim

"*****************************************************************************
"" Languages plugins
"*****************************************************************************
" multi language suport to vim
" Plug 'sheerun/vim-polyglot'

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" go
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

" html
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'

" pug
""
Plug 'digitaltoad/vim-pug'

" Rust
""
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" vala
Plug 'arrufat/vala.vim'

" python
"" Python Bundle
Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

" rust
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'

" typescript
" Plug 'HerringtonDarkholme/yats.vim'

" ReactJS JSX syntax highlighting
Plug 'mxw/vim-jsx'

" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'

" javascript
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/yajs.vim'
Plug 'afshinm/npm.vim'


" Github Copilit IA auxiliate
Plug 'github/copilot.vim'

"*****************************************************************************
"*****************************************************************************

"" Include user's extra bundle
" if filereadable(expand("~/.config/nvim/local_bundles.vim"))
"   source ~/.config/nvim/local_bundles.vim
" endif

call plug#end()
