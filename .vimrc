


call plug#begin('~/.vim/plugged')



Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'neomake/neomake'
Plug 'dracula/vim'
Plug 'https://github.com/miconda/lucariox.vim.git'
Plug 'itchyny/lightline.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" Any valid git URL is allowed
Plug 'tclem/vim-arduino'
" Multiple Plug commands can be written in a single line using | separators
Plug 'valloric/matchtagalways'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'maksimr/vim-jsbeautify'
Plug 'maxmellon/vim-jsx-pretty'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)

" Plugin options

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
" Initialize plugin system
call plug#end()


let g:vim_jsx_pretty_colorful_config = 1 " default 0

let g:ycm_collect_identifiers_from_comments_and_strings = 1


 hi clear SpellBad
 hi SpellBad cterm=underline


set background=dark 
colorscheme gruvbox
let g:gruvbox_contrast_dark = 2 
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}
set relativenumber
set number relativenumber
set lazyredraw
set undofile
let g:ycm_autoclose_preview_window_after_insertion = 1

set undodir=~/.vim/undodir//
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

map <nowait> <F9>  <Esc> @t
map! <nowait> <F9>  <Esc> @t
 nnoremap <nowait> <F12> <Esc> 1z=

map <F2> :w <CR>
map! <F2> <Esc> :w <CR>
map <F5>  :mksession! main.vim  <CR> 
map <F10> :setlocal spell! spelllang=pt_PT <CR>
let g:livepreview_previewer = 'zathura'

let g:lightline = {
	\'colorscheme': 'jellybeans',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly']
  \     ]
  \   },
	\   'component': {
	\     'lineinfo': ' %3l:%-2v',
	\   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
  \}

let g:lightline.tabline = {
  \   'left': [ ['tabs'] ],
  \   'right': [ ['close'] ]
  \ }
set showtabline=2  " Show tabline
set noshowmode
set laststatus=2
set guioptions-=e  " Don't use GUI tabline
map <silent> <C-n> : NERDTreeToggle<CR>

map <C-k> <C-\><C-N>: tabnext <CR>

" set clipboard=unnamed


      " CTRL-SHIFT-j is previous tab
noremap <C-S-j> : <C-U> tabprevious <CR>
inoremap <C-S-j> <C-\><C-N>: tabprevious <CR>
cnoremap <C-S-j> <C-C>: tabprevious<CR>



noremap <C-t> : <C-U>tabnew<CR>
inoremap <C-t> <C-\><C-N>:tabnew<CR>
cnoremap <C-t> <C-C>:tabnew<CR>
set statusline+=%#warningmsg#
set statusline+=%*

noremap <C-w> : <C-U>tabclose<CR>
inoremap <C-w> <C-\><C-N>:tabclose<CR>
 cnoremap <C-w> <C-C> : tabclose<CR>


set t_Co=256
noremap y "+y


autocmd FileType javascript noremap <buffer> <c-f> : call JsBeautify() <cr>
       " for json
autocmd FileType json noremap <buffer> <c-f> : call JsonBeautify() <cr>
        " for jsx
autocmd FileType jsx noremap <buffer> <c-f> : call JsxBeautify() <cr>
       " for html
autocmd FileType html noremap <buffer> <c-f> : call HtmlBeautify() <cr>

au BufNewFile,BufRead *.ejs set filetype=html

autocmd FileType mason noremap <buffer> <c-f> : call HtmlBeautify() <cr>
 
" for css or scss
autocmd FileType css noremap <buffer> <c-f> : call CSSBeautify() <cr>
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
