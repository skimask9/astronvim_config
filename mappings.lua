-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<F1>"] = { ":w|!python3.11 %<cr>", desc = "Run python file" },
    ["<F2>"] = { ":ToggleTerm direction=horizontal<cr>", desc = "ToggleTerm" },
    ["<leader>vs"] = { "<cmd>:VenvSelect<cr>", desc = "Select Venv" },
    ["<leader>vc"] = { "<cmd>:VenvSelectCached<cr>", desc = "Select Venv Cached" },
    ["<leader>Go"] = { "<cmd>:OpenFileInRepo<cr>", desc = "Open File in Github.com" },
    ["<leader>Gy"] = { "<cmd>:YankFileUrl +<cr>", desc = "To copy url link github" },
    ["<C-x>"] = { "<cmd>:Telescope buffers<cr>" },
    ["<leader>Fi"] = { "<cmd>:set foldmethod=indent<cr>", desc = "Fold Indent All" },
    ["<leader>Fm"] = { "<cmd>:set foldmethod=manual<cr>", desc = "Fold Manual" },
    ["<leader>Fs"] = { "<cmd>:set foldmethod=syntax<cr>", desc = "Fold Syntax (works well with js,html)" },
    ["<leader>Fv"] = { "<cmd>:mkview<cr>", desc = "To save all folds" },
    ["<leader>Fl"] = { "<cmd>:load<cr>", desc = "To load all folds" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>v"] = { name = "Venv" },
    ["<leader>G"] = { name = " Git links" },
    ["<leader>F"] = { name = "Fold" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
