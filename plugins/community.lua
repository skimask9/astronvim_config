return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.colorscheme.neosolarized-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  -- { import = "astrocommunity.colorscheme.everforest" },
  -- { import = "astrocommunity.colorscheme.nordic-nvim" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim", enabled = true },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  { import = "astrocommunity.editing-support.vim-move" },
  -- NOTE: nvim 0.10+
  -- { import = "astrocommunity.bars-and-lines.dropbar-nvim" },
  -- NOTE: nvim 0.10+
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.templ" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.telescope-undo-nvim" },
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  -- { import = "astrocommunity.editing-support.treesj" },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.color.tint-nvim" },
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
  { import = "astrocommunity.scrolling.nvim-scrollbar" },
  { import = "astrocommunity.utility.noice-nvim" },
  -- {
  --   "catppuccin/nvim",
  --   priority = 1000,
  --   opts = {
  --     styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
  --       comments = { "italic" }, -- Change the style of comments
  --       conditionals = { "italic" },
  --       loops = { "bold" },
  --       functions = { "italic" },
  --       keywords = { "bold" },
  --       strings = {},
  --       variables = {},
  --       numbers = {},
  --       booleans = { "bold" },
  --       properties = {},
  --       types = { "italic" },
  --       operators = {},
  --     },
  --   },
  -- },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   opts = {
  --     compile = true, -- enable compiling the colorscheme
  --     undercurl = true, -- enable undercurls
  --     commentStyle = { italic = true },
  --     functionStyle = { italic = true },
  --     keywordStyle = { bold = true },
  --     statementStyle = { bold = true },
  --     typeStyle = {},
  --     transparent = false, -- do not set background color
  --     dimInactive = false, -- dim inactive window `:h hl-NormalNC`
  --     terminalColors = true,
  --     colors = {
  --       theme = {
  --         all = {
  --           ui = {
  --             bg_gutter = "none",
  --           },
  --         },
  --       },
  --     },
  --     overrides = function(colors)
  --       local theme = colors.theme
  --       return {
  --         -- TablineFill = { bg = theme.ui.bg_p1 },
  --         NormalFloat = { bg = "none" },
  --         FloatBorder = { bg = "none" },
  --         FloatTitle = { bg = "none" },
  --         NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
  --         LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
  --         MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
  --         -- TabLineFill	Tab pages line, where there are no labels.
  --         TabLineFill = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
  --         -- TabLineSel	Tab pages line, active tab page label.
  --         -- Title		Titles for output from ":set all", ":autocmd" etc.
  --         Title = { fg = theme.syn.fun, bold = true },
  --         Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
  --         PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
  --         PmenuSbar = { bg = theme.ui.bg_m1 },
  --         PmenuThumb = { bg = theme.ui.bg_p2 },
  --         TelescopeTitle = { fg = theme.ui.special, bold = true },
  --         TelescopePromptNormal = { bg = theme.ui.bg_p1 },
  --         TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
  --         TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
  --         TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
  --         TelescopePreviewNormal = { bg = theme.ui.bg_dim },
  --         TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
  --       }
  --     end,
  --   },
  -- },
  -- {
  --   "Wansmer/treesj",
  --   keys = { { "<leader>j", "<CMD>TSJToggle<CR>", desc = "Toggle Treesitter Join" } },
  --   cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
  --   opts = { use_default_keymaps = false },
  -- },
  -- {
  --   "AlexvZyl/nordic.nvim",
  --   opts = {
  --     -- This callback can be used to override the colors used in the palette.
  --     on_palette = function(palette) return palette end,
  --     -- Enable bold keywords.
  --     bold_keywords = true,
  --     -- Enable italic comments.
  --     italic_comments = true,
  --     -- Enable general editor background transparency.
  --     transparent_bg = false,
  --     -- Enable brighter float border.
  --     bright_border = false,
  --     -- Reduce the overall amount of blue in the theme (diverges from base Nord).
  --     reduced_blue = true,
  --     -- Swap the dark background with the normal one.
  --     swap_backgrounds = false,
  --     -- Override the styling of any highlight group.
  --     override = {},
  --     -- Cursorline options.  Also includes visual/selection.
  --     cursorline = {
  --       -- Bold font in cursorline.
  --       bold = false,
  --       -- Bold cursorline number.
  --       bold_number = true,
  --       -- Avialable styles: 'dark', 'light'.
  --       theme = "dark",
  --       -- Blending the cursorline bg with the buffer bg.
  --       blend = 0.9,
  --     },
  --     noice = {
  --       -- Available styles: `classic`, `flat`.
  --       style = "flat",
  --     },
  --     telescope = {
  --       -- Available styles: `classic`, `flat`.
  --       style = "flat",
  --     },
  --     leap = {
  --       -- Dims the backdrop when using leap.
  --       dim_backdrop = false,
  --     },
  --     ts_context = {
  --       -- Enables dark background for treesitter-context window
  --       dark_background = false,
  --     },
  --   },
  -- },
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
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false, -- Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal`
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { bold = true },
        functions = { italic = true },
        variables = { bold = true },
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "transparent", -- style for sidebars, see below
        floats = "transparent", -- style for floating windows
      },
      sidebars = { "qf", "help" },
      on_colors = function(colors)
        colors.hint = colors.orange
        colors.error = "#ff0000"
      end,
      on_highlights = function(hl, c)
        local prompt = "#2d3149"
        hl.TelescopeNormal = {
          bg = c.bg_dark,
          fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.TelescopePromptNormal = {
          bg = prompt,
        }
        hl.TelescopePromptBorder = {
          bg = prompt,
          fg = prompt,
        }
        hl.TelescopePromptTitle = {
          bg = prompt,
          fg = prompt,
        }
        hl.TelescopePreviewTitle = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.TelescopeResultsTitle = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
      end,
    },
  },
  {
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    event = "User AstroFile",
    keys = {
      { "<C-q>", function() require("harpoon"):list():select(1) end, desc = "Nav file 1" },
      { "<C-e>", function() require("harpoon"):list():select(2) end, desc = "Nav file 2" },
      { "<C-f>", function() require("harpoon"):list():select(3) end, desc = "Nav file 3" },
      { "<C-t>", function() require("harpoon"):list():select(4) end, desc = "Nav file 4" },
    },
  },
}
