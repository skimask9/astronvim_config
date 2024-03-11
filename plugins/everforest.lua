return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("everforest").setup {
      -- Your config here
      background = "hard",
      italics = true,
      disable_italic_comments = false,
      -- float_style = "dim",
    }
  end,
}
