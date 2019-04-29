" Tirado de https://github.com/neoclide/coc.nvim/issues/335
"{{{coc-init
   let g:VIM_Snippets = 'coc-snippets'
   if g:VIM_Snippets ==# 'ultisnips'
       let g:Coc_Snippet = 'coc-ultisnips'
   elseif g:VIM_Snippets ==# 'coc-snippets'
       let g:Coc_Snippet = 'coc-snippets'
   endif
               "\   'coc-dictionary', 'coc-word', 'coc-emoji',
   call coc#add_extension(
               \   g:Coc_Snippet, 'coc-tag',
               \   'coc-html', 'coc-css',
               \   'coc-emmet', 'coc-highlight', 'coc-rls',
               \   'coc-jest', 'coc-json'
               \   )
   "}}}
   "{{{coc-settings
   augroup CocAu
       autocmd!
       autocmd CursorHoldI,CursorMovedI * call CocAction('showSignatureHelp')
       autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
       autocmd InsertEnter * call CocMapping()
				" autocmd CursorHoldN * silent call CocActionAsync('highlight')
   augroup END
   set completeopt=noinsert,noselect,menuone
   highlight CocErrorHighlight ctermfg=Gray guifg=#8d8d8d
   "}}}
   "{{{coc-mappings
   if g:VIM_Snippets ==# 'coc-snippets'
       let g:UltiSnipsJumpForwardTrigger       = '<A-z>``````j'
       let g:UltiSnipsJumpBackwardTrigger      = '<A-z>``````k'
   endif
   function! CocMapping()
       inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
       inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-n>"
       inoremap <expr> <C-j> pumvisible() ? "\<C-y>" : "\<C-j>"
       inoremap <expr> <up> pumvisible() ? "\<Space>\<Backspace>\<up>" : "\<up>"
       inoremap <expr> <down> pumvisible() ? "\<Space>\<Backspace>\<down>" : "\<down>"
       inoremap <expr> <left> pumvisible() ? "\<Space>\<Backspace>\<left>" : "\<left>"
       inoremap <expr> <right> pumvisible() ? "\<Space>\<Backspace>\<right>" : "\<right>"
       inoremap <expr> <CR> pumvisible() ? "\<Space>\<Backspace>\<CR>" : "\<CR>"
       inoremap <expr> <C-z> pumvisible() ? "\<C-e>" : "<C-z>"
   endfunction

   inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
   inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

   function! s:check_back_space() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
   endfunction

   " Use <c-space> for trigger completion.
   inoremap <silent><expr> <c-space> coc#refresh()
   "}}}
