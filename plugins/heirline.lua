local is_available = require("astronvim.utils").is_available
return {
  "rebelot/heirline.nvim",
  cond = not vim.g.vscode,
  opts = function(_, opts)
    local status = require "astronvim.utils.status"
    local colors = require "user.heirline.colors"
    local icons = require "user.plugins.configs.icons"
    -- custom heirline statusline component for harpoon
    -- custom heirline statusline component for grapple

    opts.statusline = {
      -- statusline
      hl = { fg = "fg" },
      status.component.mode {
        mode_text = { { icon = "", padding = { right = 5, left = 5 } } },
        surround = {
          -- it's a left element, so use the left separator
          separator = "left",
          -- set the color of the surrounding based on the current mode using astronvim.status module
        },
      }, -- add the mode text
      status.component.file_info {
        filetype = {},
        filename = false,
      },

      status.component.git_branch {
        surround = { separator = "none" },
      },
      status.component.git_diff {
        padding = { left = 0 },
        surround = {
          separator = "none",
        },
      },
      status.component.fill(),
      status.component.lsp {
        lsp_client_name = false,
        surround = {
          separator = "none",
        },
      },
      status.component.diagnostics {
        padding = { right = 1 },
        surround = {
          separator = "none",
        },
      },
      status.component.nav(),
    }
    return opts
  end,
}
