return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim", enabled = true },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  -- NOTE: nvim 0.10+
  -- { import = "astrocommunity.bars-and-lines.dropbar-nvim" },
  -- NOTE: nvim 0.10+
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.telescope-undo-nvim" },
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.color.tint-nvim" },
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
  { import = "astrocommunity.scrolling.nvim-scrollbar" },
  -- NOTE: astro v4
  -- { import = "astrocommunity.utillity.noice-nvim" },
  -- { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  -- NOTE: astro v4
  {
    "rebelot/kanagawa.nvim",
    opts = {
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = { italic = true },
      keywordStyle = { bold = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    },
  },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = "120",
      disabled_filetypes = { "help", "text", "markdown", "html", "htmldjango" },
      -- custom_colorcolumn = {},
      scope = "file",
    },
  },
  {
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    cmd = { "Harpoon" },
    keys = {
      { "<C-p>", function() require("harpoon.ui").nav_prev() end, desc = "Goto previous mark" },
      { "<C-t>", function() require("harpoon.ui").nav_next() end, desc = "Goto next mark" },
      { "<C-q>", function() require("harpoon.ui").nav_file(1) end, desc = "Nav file 1" },
      { "<C-w>", function() require("harpoon.ui").nav_file(2) end, desc = "Nav file 2" },
      { "<C-e>", function() require("harpoon.ui").nav_file(3) end, desc = "Nav file 3" },
      { "<C-f>", function() require("harpoon.ui").nav_file(4) end, desc = "Nav file 4" },
    },
  },
}
