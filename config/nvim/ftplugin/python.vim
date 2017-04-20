" Python specific settings.
setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal formatoptions=croql
nmap <F5> :w <CR> :!clear; python % <CR>
nmap <F6> :w <CR> :!python % 
" set foldmethod=indent
let python_highlight_all=1

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Neomake linting (should have flake8 and pylint in PATH/virtualenv)

let g:neomake_python_enabled_makers = ['pylint', 'flake8']

" http://pep8.readthedocs.io/en/latest/intro.html#error-codes
" https://github.com/PyCQA/pep8-naming
let g:neomake_python_flake8_args = neomake#makers#ft#python#flake8()['args'] + ['--ignore', 'N802']

" http://pylint-messages.wikidot.com/all-codes
" http://pylint-messages.wikidot.com/all-messages
let g:neomake_python_pylint_args = neomake#makers#ft#python#pylint()['args'] + ['-d', 'missing-docstring,invalid-name']

