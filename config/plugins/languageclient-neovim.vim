" let $LANGUAGECLIENT_DEBUG=1
" let g:LanguageClient_loggingLevel='DEBUG'
" let g:LanguageClient_loggingFile='/tmp/LanguageClientLog.log'
" let g:LanguageClient_serverStderr = '/tmp/LanguageServer.log'
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#auto_complete_delay = 5  " Default is 50
" let g:deoplete#auto_refresh_delay = 30  " Default is 500

let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = '/home/fcf/.config/nvim/settings.json'

" let g:LanguageClient_serverCommands = {
"  \'python' : ['/usr/bin/dotnet', 'exec', '/home/fcf/microsoft-lsp/python-language-server/output/bin/Release/Microsoft.Python.LanguageServer.dll']
"  \ }
let g:LanguageClient_serverCommands = {
  \'python' : ['/home/fcf/anaconda3/envs/pesquisas/bin/pyls']
  \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
let g:passoulc = 'yeah1'
