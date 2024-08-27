return {
  "akinsho/toggleterm.nvim",

  config = function()
    require("toggleterm").setup({
      shade_terminals = false,
      open_mapping = [[<C-j>]],
      start_in_insert = true,
      persist_size = true,
      direction = "horizontal",
    })
  end,
}
