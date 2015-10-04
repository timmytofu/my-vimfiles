" Quick mappings for GhcMod stuff
nmap <silent> <leader>ht :GhcModType<CR>
nmap <silent> <leader>hT :GhcModTypeInsert<CR>
nmap <silent> <leader>hc :GhcModCheckAsync<CR>
nmap <silent> <leader>hl :GhcModLintAsync<CR>

nmap <silent> <leader>bb :GhcModType

command! GMT GhcModType
command! GMTC GhcModTypeClear

" Hoogle the word under the cursor
nnoremap <silent> <leader>hh :Hoogle<CR>

" Hoogle and prompt for input
nnoremap <leader>hH :Hoogle

" Hoogle for detailed documentation (e.g. "Functor")
nnoremap <silent> <leader>hi :HoogleInfo<CR>

" Hoogle for detailed documentation and prompt for input
nnoremap <leader>hI :HoogleInfo

" Hoogle, close the Hoogle window
nnoremap <silent> <leader>hz :HoogleClose<CR>

function! Pointfree()
  call setline('.', split(system('pointfree '.shellescape(join(getline(a:firstline, a:lastline), "\n"))), "\n"))
endfunction
vnoremap <silent> <leader>h. :call Pointfree()<CR>

function! Pointful()
  call setline('.', split(system('pointful '.shellescape(join(getline(a:firstline, a:lastline), "\n"))), "\n"))
endfunction
vnoremap <silent> <leader>h> :call Pointful()<CR>

let g:ghcmod_ghc_options=["-fno-warn-unused-binds"]
