return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Choose latte, frappe, macchiato, mocha
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
