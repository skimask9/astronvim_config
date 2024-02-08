return function(hl)
  local get_hlgroup = require("astronvim.utils").get_hlgroup
  -- use helper function to get highlight group properties
  local comment_fg = get_hlgroup("Comment").bg
  hl.git_branch_fg = comment_fg
  hl.git_branch_bg = get_hlgroup("Visual").bg
  -- TO HIDE BACKGROUND OF GIT
  -- hl.git_branch_bg = get_hlgroup("Normal").bg
  hl.lsp_fg = comment_fg
  -- TO HIDE BG OF LSP
  -- hl.lsp_bg = get_hlgroup("Normal").bg
  hl.git_added = get_hlgroup("String").fg
  -- hl.git_changed =
  hl.git_removed = get_hlgroup("Error").fg
  hl.blank_bg = get_hlgroup("Folded").fg
  hl.file_info_bg = get_hlgroup("Folded").bg
  -- hl.file_info_bg = get_hlgroup("Visual").bg
  hl.file_info_fg = comment_fg
  hl.nav_icon_bg = get_hlgroup("String").fg
  hl.nav_fg = hl.nav_icon_bg
  hl.folder_icon_bg = get_hlgroup("String").fg
  -- hl.diagnostics_bg = get_hlgroup("Normal").bg

  -- hl.diagnostics_bg = get_hlgroup("String").bg
  return hl
end
