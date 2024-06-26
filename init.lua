return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin", -- remote to use
    channel = "stable", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false, -- automatically quit the current session after a successful update
    remotes = { -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },

  -- Set colorscheme to use
  -- colorscheme = "solarized-osaka-night",
  colorscheme = "everforest",
  -- colorscheme = "catppuccin-mocha",
  -- colorscheme = "kanagawa",
  -- colorscheme = "tokyonight-night",
  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },
  lsp = {
    -- vim.filetype.add { extension = { templ = "templ" } },
    -- customize lsp formatting options
    -- features = {
    --   inlay_hints = true,
    -- },
    config = {
      htmx = {
        filetypes = { "html", "templ", "htmldjango", "djlint" },
      },
      gopls = {
        templateExtensions = { "templ", "tmpl" },
        -- hints = {
        --   assignVariableTypes = true,
        --   compositeLiteralFields = true,
        --   compositeLiteralTypes = true,
        --   constantValues = true,
        --   functionTypeParameters = true,
        --   parameterNames = true,
        --   rangeVariableTypes = true,
        -- },
      },
      pyright = {
        -- Using Ruff's import organizer
        -- enabled = false,
        disableOrganizeImports = true,
        -- settings = {
        --   python = {
        --     analysis = {
        --       typeCheckingMode = "off",
        --     },
        --   },
        -- },
      },
      -- basedpyright = {
      --   analysis = {
      --     autoSearchPaths = true,
      --     diagnosticMode = "openFilesOnly",
      --     useLibraryCodeForTypes = true,
      --   },
      -- },
      ruff_lsp = {
        -- on_attach = on_attach,
        on_attach = function(client, bufnr)
          if client.name == "ruff_lsp" then
            -- Disable hover in favor of Pyright
            client.server_capabilities.hoverProvider = false
          end
        end,
      },
      tailwindcss = {
        root_dir = function(fname)
          local util = require "lspconfig.util"
          return util.root_pattern("tailwind.config.js", "tailwind.config.ts", "./theme/static_src/tailwind.config.js")(
            fname
          ) or util.root_pattern("postcss.config.js", "postcss.config.ts")(fname) or util.find_package_json_ancestor(
            fname
          ) or util.find_node_modules_ancestor(fname) or util.find_git_ancestor(fname)
        end,
        userLanguages = {
          htmldjango = "html",
          templ = "html",
        },
      },
      -- templ = {
      --   filetypes = { "html" },
      -- },
    },

    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
          "htmldjango",
          "djlint",
          "html",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
  },
  -- modify variables used by heirline but not defined in the setup call directly
  plugins = {},

  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    -- Set up custom filetypes

    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
    --
    vim.api.nvim_create_autocmd("VimEnter", {
      desc = "Auto select virtualenv Nvim open",
      pattern = "*",
      callback = function()
        local venv = vim.fn.findfile("pyproject.toml", vim.fn.getcwd() .. ";")
        if venv ~= "" then require("venv-selector").retrieve_from_cache() end
      end,
      once = true,
    })
    vim.api.nvim_create_autocmd("VimEnter", {
      desc = "Auto select virtualenv Nvim open",
      pattern = "*",
      callback = function()
        local venv_folder = vim.fn.getcwd() .. "/.venv"
        if vim.fn.isdirectory(venv_folder) == 1 then require("venv-selector").retrieve_from_cache() end
      end,
      once = true,
    })
    vim.api.nvim_create_autocmd("VimEnter", {
      desc = "Auto select virtualenv Nvim open",
      pattern = "*",
      callback = function()
        local current_filetype = vim.bo.filetype
        if current_filetype == "py" then require("venv-selector").retrieve_from_cache() end
      end,
      once = true,
    })
  end,
}
