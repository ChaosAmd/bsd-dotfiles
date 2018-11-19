""""""""""""""""""""""""""""""""""""""""""""""""""""""'''
" General Configuration for Vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author 	- 	Amadeus Dabela
" Date		-	2018-11-18
" Version	-	1.0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"	"	"	"	"	"	"	"
"			PLUGIN EDITTING	"
"	"	"	"	"	"	"	"


set nocompatible			" VIMproved
filetype off				" Setting filetype off to load 'Vundle'

""""""""""""""""
" Vundle start "
""""""""""""""""

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

""""""""""""""""
"   Pluginss   "
""""""""""""""""

" Visual
Plugin 'itchyny/lightline.vim'			" Vim minimalist status line
Plugin 'itchyny/vim-gitbranch'			" Also minimalist gitbranch show

" Editing/Text
Plugin 'terryma/vim-multiple-cursors'	" Multiple string editing
Plugin 'vim-latex/vim-latex'			" Vim-latex plugin
Plugin 'tpope/vim-surround'				" Deal with parenthesis

"""""""""""""""
" Vundle end  "
"""""""""""""""

call vundle#end()
filetype plugin indent on

" ~ Usage ~
" :PluginList		- lists all plugins
" :PluginInstall	- Install everything, 
" :PluginUpdate		- Update plugins
" :PluginSearch		- Search, du'h
" :PluginClean		- Remove orphan plugins

"	"	"	"	"	"	"	"
"		  TEXT				"
"	"	"	"	"	"	"	"

set tw=88					" Maximum line cols
set tabstop=4				" Tab spacing
set softtabstop=4			" Spacetab
set shiftwidth=4			" Don't mess
set shiftround				" Don't mess tabs % 4

"	"	"	"	"	"	"	"
"			 VISUAL		"	"	
"	"	"	"	"	"	"	"
set laststatus=2							" Required by the plugin			
set noshowmode								" Minimalist design owns
let g:lightline = { 
	\ 'colorscheme': 'wombat',				
	\ 'active': {
	\	'left': [ [ 'mode', 'paste'],
	\			  [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\	'gitbranch': 'gitbranch#name'
	\ },
	\}

"	"	"	"	"	"	"	"
"		LATEX ENV			"
"	"	"	"	"	"	"	"
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'pdftex -interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'mupdf'
