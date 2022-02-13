" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Configure neovim using lua.
lua require'nvim-tree'.setup()
lua require'lualine'.setup()
lua require'catppuccin'.setup(settings)

" Automatically setting options.
set fileencoding=utf-8            " File content encoding for the buffer
set spelllang=en                  " Support US english
set clipboard=unnamedplus         " Connection to the system clipboard
set mouse=a	                      " Enable mouse support
set signcolumn=yes	              " Always show the sign column
set foldmethod=manual	            " Create folds manually
set completeopt=menuone,noselect  " Options for insert mode completion
set colorcolumn=99999							" Fix for the indentline problem
set nobackup                      " Disable making a backup file
set expandtab                     " Enable the use of space in tab
set hidden                        " Ignore unsaved buffers
set hlsearch                      " Highlight all the matches of search pattern
set ignorecase                    " Case insensitive searching
set smartcase                     " Case sensitivie searching
set nospell                       " Disable spelling checking and highlighting
set noshowmode                    " Disable showing modes in command line
set smartindent                   " Do auto indenting when starting a new line
set splitbelow                    " Splitting a new window below the current one
set splitright                    " Splitting a new window at the right of the current one
set noswapfile                    " Disable use of swapfile for the buffer
set termguicolors                 " Enable 24-bit RGB color in the TUI
set undofile                      " Enable persistent undo
set nowritebackup                 " Disable making a backup before overwriting a file
set cursorline                    " Highlight the text line of the cursor
set number                        " Show numberline
set nowrap                        " Disable wrapping of lines longer than the width of window
set conceallevel=0                " Show text normally
set cmdheight=1                   " Number of screen lines to use for the command line
set shiftwidth=2                  " Number of space inserted for indentation
set tabstop=2                     " Number of space in a tab
set scrolloff=8                   " Number of lines to keep above and below the cursor
set sidescrolloff=8               " Number of columns to keep at the sides of the cursor
set pumheight=10                  " Height of the pop up menu
set history=100                   " Number of commands to remember in a history table
colorscheme catppuccin            " Soothing pastel theme for NeoVim

" Key mapping, abbreviations and user-defined commands.
inoremap jk <Esc>
nnoremap <silent><C-n> :NvimTreeToggle<CR>
nnoremap <silent><C-t> :ToggleTerm<CR>
