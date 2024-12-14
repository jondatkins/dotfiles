if true then
  return {}
end
-- replacing this with slimux, which is a neovim plugin, will remove this file later
-- Vimux was originally inspired by tslime.vim, a plugin that lets you send input to tmux.
-- While tslime.vim works well, it wasn't optimized for the use case of having a smaller
-- tmux pane used to run tests or play with a REPL.
-- The goal of Vimux is to make interacting with tmux from vim effortless.
return {
  "preservim/vimux",
  keys = {
    {
      "<Leader>vp",
      ":VimuxPromptCommand",
      "<Leader>vl",
      ":VimuxRunLastCommand",
    },
  },
}
-- map <Leader>vp :VimuxPromptCommand<CR>
--map <Leader>vl :VimuxRunLastCommand<CR>
