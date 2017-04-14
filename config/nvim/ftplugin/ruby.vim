setlocal ts=2 sts=2 sw=2 expandtab

:nnoremap <leader>rt :Dispatch rspec %<cr>
:nnoremap <leader>rl :execute "Dispatch rspec <c-r>%:" . line(".")<cr>

