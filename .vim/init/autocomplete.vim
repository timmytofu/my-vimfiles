" settings for neocomplete

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
" Show type info with completion
let g:necoghc_enable_detailed_browse = 1

" <TAB>: completion.
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" to stop vim-rails from fucking things up while I have to have it
let g:neocomplete#force_overwrite_completefunc = 1

function! s:my_cr_function()
  return neocomplete#smart_close_popup() . "\<CR>"
endfunction

" so that enter closes the popup rather than losing the top option
" and hanging around like it does now - who wants that?
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>

call writefile(["yo"],"/tmp/fuck")
call writefile([pumvisible()],"/tmp/fuck2")
