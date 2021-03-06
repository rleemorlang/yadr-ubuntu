" Make it beautiful - colors and fonts
if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  " http://ethanschoonover.com/solarized/vim-colors-solarized
  colorscheme solarized
  set background=dark

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=50
  set columns=84

  set guifont=Ubuntu\ Mono\ 10

  " workaround Powerline problem where statusline doesn't init properly
  autocmd FocusGained * silent PowerlineReloadColorscheme
else
  "dont load csapprox if we no gui support - silences an annoying warning
  let g:CSApprox_loaded = 1
endif

