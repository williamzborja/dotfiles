return {
  "akinsho/toggleterm.nvim",
  config = true,
  keys = {
    {"<c-t>", '<cmd>exe v:count1 . "ToggleTerm"<CR>'},
  },
}
