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
    ["<leader>i"] = { function() require("lspimport").import() end, desc = "Import" },
    ["<F1>"] = { ":w|!python3  %<cr>", desc = "Run python file" },
    ["<F3>"] = { ":w|!go run %<cr>", desc = "Run go file" },
    ["<TAB>"] = { "<cmd>:Telescope buffers<cr>", desc = "buffers" },
    ["<F2>"] = { ":ToggleTerm direction=horizontal<cr>", desc = "ToggleTerm" },
    ["<leader>vs"] = { "<cmd>:VenvSelect<cr>", desc = "Select Venv" },
    ["<leader>vc"] = { "<cmd>:VenvSelectCached<cr>", desc = "Select Venv Cached" },
    ["<leader>Go"] = { "<cmd>:GitBlameOpenFileURL<cr>", desc = "Open File in Github.com" },
    ["<leader>Gy"] = { "<cmd>:GitBlameCopyFileURL<cr>", desc = "To copy url link github" },
    ["<leader>Gt"] = { "<cmd>:GitBlameToggle<cr>", desc = "To toggle git blame" },
    -- ["<C-x>"] = { "<cmd>:Telescope buffers<cr>" },
    ["<leader>Fi"] = { "<cmd>:set foldmethod=indent<cr>", desc = "Fold Indent All" },
    ["<leader>Fm"] = { "<cmd>:set foldmethod=manual<cr>", desc = "Fold Manual" },
    ["<leader>Fs"] = { "<cmd>:set foldmethod=syntax<cr>", desc = "Fold Syntax (works well with js,html)" },
    ["<leader>Fv"] = { "<cmd>:mkview<cr>", desc = "To save all folds" },
    ["<leader>Fl"] = { "<cmd>:load<cr>", desc = "To load all folds" },
    ["<leader>Mt"] = { "<cmd>:GithubPreviewToggle<cr>", desc = "Toggle GithubPreviewToggle" },
    ["<leader>ft"] = { "<cmd>:Telescope tmux windows<cr>", desc = "Tmux switcher" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>v"] = { name = "Venv" },
    ["<leader>G"] = { name = " Git links" },
    ["<leader>F"] = { name = "Fold" },
    ["<leader>M"] = { name = " MarkDown Preview" },
    -- quick save
    ["<c-c>"] = { '"+y', desc = "" },
    ["<c-v>"] = { '"+p', desc = "" },
    ["<S-Down>"] = { "<cmd>t.<cr>", desc = "" },
    ["<S-Up>"] = { "<cmd>t -1<cr>", desc = "" },
    -- ["<M-J>"] = { "<cmd>t.<cr>", desc = "" },
    -- ["<M-K>"] = { "<cmd>t -1<cr>", desc = "" },
    ["<M-Down>"] = { "<cmd>m+<cr>", desc = "" },
    ["<M-Up>"] = { "<cmd>m-2<cr>", desc = "" },
    -- ["<M-j>"] = { "<cmd>m+<cr>", desc = "" },
    -- ["<M-k>"] = { "<cmd>m-2<cr>", desc = "" },
    ["q"] = { "<cmd>q<cr>", desc = "" },
  },
  i = {
    ["<c-c>"] = { '"+y', desc = "" },
    ["<c-v>"] = { "<c-r>+", desc = "" },
    ["<S-Down>"] = { "<cmd>t.<cr>", desc = "" },
    ["<M-Down>"] = { "<cmd>m+<cr>", desc = "" },
    ["<S-Up>"] = { "<cmd>t -1<cr>", desc = "" },
    ["<M-Up>"] = { "<cmd>m-2<cr>", desc = "" },
    ["<C-s>"] = { "<cmd>w<cr>", desc = "" },
  },
  v = {
    ["p"] = { '"_dP', desc = "" },
    ["<c-c>"] = { '"+y', desc = "" },
    ["<c-v>"] = { '"+p', desc = "" },
    ["<A-Down>"] = { ":move '>+1<CR>gv-gv", desc = "" },
    ["<A-Up>"] = { ":move '<-2<CR>gv-gv", desc = "" },
    ["<S-Down>"] = { ":'<,'>t'><cr>", desc = "" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
