#!/bin/bash

# Download plug.vim and put it in the "~/.vim/autoload/" directory:
git clone https://github.com/junegunn/vim-plug.git ~/.vim/autoload/vim-plug/
cp ~/.vim/autoload/vim-plug/plug.vim ~/.vim/autoload/plug.vim

# Generate file "~/.vim/vimrc" for vim:
echo '" VIM Runtime Configuration file "~/.vim/vimrc"' > ~/.vim/vimrc
echo -e >> ~/.vim/vimrc
echo '" set options:' >> ~/.vim/vimrc
echo '" For view:' >> ~/.vim/vimrc
echo ':set list' >> ~/.vim/vimrc
echo ':set number' >> ~/.vim/vimrc
echo ':set relativenumber' >> ~/.vim/vimrc
echo '" let options:' >> ~/.vim/vimrc
echo '" For <Leader> keys:' >> ~/.vim/vimrc
echo ":let mapleader = '\'" >> ~/.vim/vimrc
echo -e >> ~/.vim/vimrc
echo '" Shortcuts for quick access:' >> ~/.vim/vimrc
echo ':noremap ys "+y' >> ~/.vim/vimrc
echo ':noremap <Space><Space> /(++)<CR>c%' >> ~/.vim/vimrc
echo ':noremap <Leader>tm :TableModeToggle<CR>' >> ~/.vim/vimrc
echo ':nmap <Leader>mp <Plug>MarkdownPreview' >> ~/.vim/vimrc
echo ':nmap <Leader>sp <Plug>StopMarkdownPreview' >> ~/.vim/vimrc
echo -e >> ~/.vim/vimrc
echo '" Call plugin by vim-plug:' >> ~/.vim/vimrc
echo '" Specify a directory for plugins:' >> ~/.vim/vimrc
echo ":call plug#begin('~/.vim/plugged')" >> ~/.vim/vimrc
echo '" For Markdown Preview:' >> ~/.vim/vimrc
echo ":Plug 'iamcco/mathjax-support-for-mkdp'" >> ~/.vim/vimrc
echo ":Plug 'iamcco/markdown-preview.vim'" >> ~/.vim/vimrc
echo ':source ~/.vim/markdown-preview.vim' >> ~/.vim/vimrc
echo "\":Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}" >> ~/.vim/vimrc
echo '":source ~/.vim/markdown-preview.nvim' >> ~/.vim/vimrc
echo '" For VIM Table Mode:' >> ~/.vim/vimrc
echo ":Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }" >> ~/.vim/vimrc
echo '" For VimWiki:' >> ~/.vim/vimrc
echo ":Plug 'vimwiki/vimwiki'" >> ~/.vim/vimrc
echo '" Initialize plugin system:' >> ~/.vim/vimrc
echo ':call plug#end()' >> ~/.vim/vimrc

# Generate file "~/.vim/markdown-preview.vim" for Markdown Preview:
echo '" Markdown Preview Configuration file "~/.vim/markdown-preview.vim"' > ~/.vim/markdown-preview.vim
echo -e >> ~/.vim/markdown-preview.vim
echo 'let g:mkdp_path_to_chrome = ""' >> ~/.vim/markdown-preview.vim
echo '" Path to the chrome or the command to open chrome (or other modern browsers).' >> ~/.vim/markdown-preview.vim
echo '" If set, g:mkdp_browserfunc would be ignored.' >> ~/.vim/markdown-preview.vim
echo -e >> ~/.vim/markdown-preview.vim
echo "let g:mkdp_browserfunc = 'MKDP_browserfunc_default'" >> ~/.vim/markdown-preview.vim
echo '" Callback Vim function to open browser, the only parameter is the url to open.' >> ~/.vim/markdown-preview.vim
echo -e >> ~/.vim/markdown-preview.vim
echo 'let g:mkdp_auto_start = 0' >> ~/.vim/markdown-preview.vim
echo '" Set to 1, Vim will open the preview window on entering the Markdown' >> ~/.vim/markdown-preview.vim
echo '" buffer.' >> ~/.vim/markdown-preview.vim
echo -e >> ~/.vim/markdown-preview.vim
echo 'let g:mkdp_auto_open = 0' >> ~/.vim/markdown-preview.vim
echo '" Set to 1, Vim will automatically open the preview window when you edit a' >> ~/.vim/markdown-preview.vim
echo '" Markdown file.' >> ~/.vim/markdown-preview.vim
echo -e >> ~/.vim/markdown-preview.vim
echo 'let g:mkdp_auto_close = 1' >> ~/.vim/markdown-preview.vim
echo '" Set to 1, Vim will automatically close the current preview window when' >> ~/.vim/markdown-preview.vim
echo '" switching from one Markdown buffer to another.' >> ~/.vim/markdown-preview.vim
echo -e >> ~/.vim/markdown-preview.vim
echo 'let g:mkdp_refresh_slow = 0' >> ~/.vim/markdown-preview.vim
echo '" Set to 1, Vim will just refresh Markdown when saving the buffer or' >> ~/.vim/markdown-preview.vim
echo '" leaving from insert mode. With default 0, it will automatically refresh' >> ~/.vim/markdown-preview.vim
echo '" Markdown as you edit or move the cursor.' >> ~/.vim/markdown-preview.vim
echo -e >> ~/.vim/markdown-preview.vim
echo 'let g:mkdp_command_for_global = 0' >> ~/.vim/markdown-preview.vim
echo '" Set to 1, the MarkdownPreview command can be used for all files,' >> ~/.vim/markdown-preview.vim
echo '" by default it can only be used in Markdown files.' >> ~/.vim/markdown-preview.vim
echo -e >> ~/.vim/markdown-preview.vim
echo 'let g:mkdp_open_to_the_world = 0' >> ~/.vim/markdown-preview.vim
echo '" Set to 1, the preview server will be available to others in your network.' >> ~/.vim/markdown-preview.vim
echo '" By default, the server only listens on localhost (127.0.0.1).' >> ~/.vim/markdown-preview.vim

# Generate file "~/.vim/markdown-preview.nvim" for Markdown Preview:
echo '" Markdown Preview Configuration file "~/.vim/markdown-preview.nvim"' > ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" set to 1, nvim will open the preview window after entering the markdown buffer' >> ~/.vim/markdown-preview.nvim
echo '" default: 0' >> ~/.vim/markdown-preview.nvim
echo 'let g:mkdp_auto_start = 0' >> ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" set to 1, the nvim will auto close current preview window when change' >> ~/.vim/markdown-preview.nvim
echo '" from markdown buffer to another buffer' >> ~/.vim/markdown-preview.nvim
echo '" default: 1' >> ~/.vim/markdown-preview.nvim
echo 'let g:mkdp_auto_close = 1' >> ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" set to 1, the vim will refresh markdown when save the buffer or' >> ~/.vim/markdown-preview.nvim
echo '" leave from insert mode, default 0 is auto refresh markdown as you edit or' >> ~/.vim/markdown-preview.nvim
echo '" move the cursor' >> ~/.vim/markdown-preview.nvim
echo '" default: 0' >> ~/.vim/markdown-preview.nvim
echo 'let g:mkdp_refresh_slow = 0' >> ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" set to 1, the MarkdownPreview command can be use for all files,' >> ~/.vim/markdown-preview.nvim
echo '" by default it can be use in markdown file' >> ~/.vim/markdown-preview.nvim
echo '" default: 0' >> ~/.vim/markdown-preview.nvim
echo 'let g:mkdp_command_for_global = 0' >> ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" set to 1, preview server available to others in your network' >> ~/.vim/markdown-preview.nvim
echo '" by default, the server listens on localhost (127.0.0.1)' >> ~/.vim/markdown-preview.nvim
echo '" default: 0' >> ~/.vim/markdown-preview.nvim
echo 'let g:mkdp_open_to_the_world = 0' >> ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" use custom IP to open preview page' >> ~/.vim/markdown-preview.nvim
echo '" useful when you work in remote vim and preview on local browser' >> ~/.vim/markdown-preview.nvim
echo '" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9' >> ~/.vim/markdown-preview.nvim
echo '" default empty' >> ~/.vim/markdown-preview.nvim
echo "let g:mkdp_open_ip = ''" >> ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" specify browser to open preview page' >> ~/.vim/markdown-preview.nvim
echo "\" default: ''" >> ~/.vim/markdown-preview.nvim
echo "let g:mkdp_browser = ''" >> ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" set to 1, echo preview page url in command line when open preview page' >> ~/.vim/markdown-preview.nvim
echo '" default is 0' >> ~/.vim/markdown-preview.nvim
echo 'let g:mkdp_echo_preview_url = 0' >> ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" a custom vim function name to open preview page' >> ~/.vim/markdown-preview.nvim
echo '" this function will receive url as param' >> ~/.vim/markdown-preview.nvim
echo '" default is empty' >> ~/.vim/markdown-preview.nvim
echo "let g:mkdp_browserfunc = ''" >> ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" options for markdown render' >> ~/.vim/markdown-preview.nvim
echo '" mkit: markdown-it options for render' >> ~/.vim/markdown-preview.nvim
echo '" katex: katex options for math' >> ~/.vim/markdown-preview.nvim
echo '" uml: markdown-it-plantuml options' >> ~/.vim/markdown-preview.nvim
echo '" maid: mermaid options' >> ~/.vim/markdown-preview.nvim
echo '" disable_sync_scroll: if disable sync scroll, default 0' >> ~/.vim/markdown-preview.nvim
echo "\" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'" >> ~/.vim/markdown-preview.nvim
echo '"   middle: mean the cursor position alway show at the middle of the preview page' >> ~/.vim/markdown-preview.nvim
echo '"   top: mean the vim top viewport alway show at the top of the preview page' >> ~/.vim/markdown-preview.nvim
echo '"   relative: mean the cursor position alway show at the relative positon of the preview page' >> ~/.vim/markdown-preview.nvim
echo '" hide_yaml_meta: if hide yaml metadata, default is 1' >> ~/.vim/markdown-preview.nvim
echo '" sequence_diagrams: js-sequence-diagrams options' >> ~/.vim/markdown-preview.nvim
echo '" content_editable: if enable content editable for preview page, default: v:false' >> ~/.vim/markdown-preview.nvim
echo 'let g:mkdp_preview_options = {' >> ~/.vim/markdown-preview.nvim
echo "    \\ 'mkit': {}," >> ~/.vim/markdown-preview.nvim
echo "    \\ 'katex': {}," >> ~/.vim/markdown-preview.nvim
echo "    \\ 'uml': {}," >> ~/.vim/markdown-preview.nvim
echo "    \\ 'maid': {}," >> ~/.vim/markdown-preview.nvim
echo "    \\ 'disable_sync_scroll': 0," >> ~/.vim/markdown-preview.nvim
echo "    \\ 'sync_scroll_type': 'middle'," >> ~/.vim/markdown-preview.nvim
echo "    \\ 'hide_yaml_meta': 1," >> ~/.vim/markdown-preview.nvim
echo "    \\ 'sequence_diagrams': {}," >> ~/.vim/markdown-preview.nvim
echo "    \\ 'flowchart_diagrams': {}," >> ~/.vim/markdown-preview.nvim
echo "    \\ 'content_editable': v:false" >> ~/.vim/markdown-preview.nvim
echo '    \ }' >> ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" use a custom markdown style must be absolute path' >> ~/.vim/markdown-preview.nvim
echo "\" like '/Users/username/markdown.css' or expand('~/markdown.css')" >> ~/.vim/markdown-preview.nvim
echo "let g:mkdp_markdown_css = ''" >> ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" use a custom highlight style must absolute path' >> ~/.vim/markdown-preview.nvim
echo "\" like '/Users/username/highlight.css' or expand('~/highlight.css')" >> ~/.vim/markdown-preview.nvim
echo "let g:mkdp_highlight_css = ''" >> ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" use a custom port to start server or random for empty' >> ~/.vim/markdown-preview.nvim
echo "let g:mkdp_port = ''" >> ~/.vim/markdown-preview.nvim
echo -e >> ~/.vim/markdown-preview.nvim
echo '" preview page title' >> ~/.vim/markdown-preview.nvim
echo '" ${name} will be replace with the file name' >> ~/.vim/markdown-preview.nvim
echo "let g:mkdp_page_title = '「\${name}」'" >> ~/.vim/markdown-preview.nvim

