return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  { "Vimjas/vim-python-pep8-indent", ft = "python" },
  {
    "AlexvZyl/nordic.nvim",
    config = function()
      require("nordic").setup {
        -- Available themes: 'nordic', 'onedark'.
        -- Onedark is WIP.
        -- on_palette = function(palette) return palette end,
        theme = "nordic",
        -- Enable bold keywords.
        bold_keywords = true,
        -- Enable italic comments.
        italic_comments = true,
        -- Enable general editor background transparency.
        transparent_bg = true,
        -- Enable brighter float border.
        bright_border = false,
        reduced_blue = true,
        swap_backgrounds = false,
        -- Nordic specific options.
        -- Set all to false to use original Nord colors.
        -- Adjusts some colors to make the theme a bit nicer (imo).
        -- nordic = {
        --   -- Reduce the overall amount of blue in the theme (diverges from base Nord).
        --   reduced_blue = true,
        -- },
        -- Onedark specific options.
        -- Set all to false to keep original onedark colors.
        -- Adjusts some colors to make the theme a bit nicer (imo).
        -- WIP.
        -- Override the styling of any highlight group.
        -- override = {
        --         -- Visual = {
        --         --         -- bg = "#2E3440",
        --         bg = "#2E3440",
        --         --         bold = true,
        --         -- },
        -- },
        cursorline = {
          -- Enable bold font in cursorline.
          bold = true,
          -- Bold cursorline number.
          bold_number = true,
          -- Available styles: 'dark', 'light'.
          theme = "dark",
          -- Hide the cursorline when the window is not focused.
          hide_unfocused = true,
          -- Blending the cursorline bg with the buffer bg.
          blend = 0.9,
        },
        noice = {
          -- Available styles: `classic`, `flat`.
          style = "flat",
        },
        telescope = {
          -- Available styles: `classic`, `flat`.
          style = "flat",
        },
        leap = {
          -- Dims the backdrop when using leap.
          dim_backdrop = false,
        },
        ts_context = {
          -- Enables dark background for treesitter-context window
          dark_background = false,
        },
      }
    end,
  },

  -- {
  --   "linux-cultist/venv-selector.nvim",
  --   config = function()
  --     require("venv-selector").setup {
  --       dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
  --       config = true,
  --       event = "VeryLazy", --
  --       name = ".venv",
  --       parents = 1,
  --     }
  --   end,
  -- },
}
