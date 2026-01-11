local wezterm = require('wezterm')
local colors = require('colors.custom')

local nf = wezterm.nerdfonts

local M = {}

M.palette = {
   bg = colors.background,
   fg = colors.foreground,
   accent = (colors.brights and colors.brights[6]) or colors.foreground,
   dim = (colors.ansi and colors.ansi[1]) or colors.foreground,
}

M.icons = {
   home = nf.md_home or nf.fa_home,
   root = nf.md_folder_root or nf.fa_folder_open,
   folder = nf.md_folder or nf.fa_folder,
   unknown = nf.md_map_marker or nf.fa_map_marker,
   starlight = nf.md_star_four_points or nf.fa_star,
}

local function decode_uri_path(path)
   if not path then
      return nil
   end
   return path:gsub('%%(%x%x)', function(hex)
      return string.char(tonumber(hex, 16))
   end)
end

local function strip_trailing_slashes(path)
   if path == '/' then
      return path
   end
   return path:gsub('/+$', '')
end

local function normalize_path(path)
   if not path then
      return nil
   end
   local normalized = tostring(path)
   normalized = normalized:gsub('^file://', '')
   normalized = decode_uri_path(normalized)
   normalized = normalized:gsub('\\', '/')
   if normalized:match('^/[A-Za-z]:') then
      normalized = normalized:sub(2)
   end
   normalized = strip_trailing_slashes(normalized)
   return normalized
end

function M.location_icon(cwd_uri)
   local cwd = normalize_path(cwd_uri)
   if not cwd or cwd == '' then
      return M.icons.unknown
   end

   local home = normalize_path(wezterm.home_dir)
   if cwd == '/' then
      return M.icons.root
   end
   if home then
      local cwd_cmp = cwd
      local home_cmp = home
      if cwd_cmp:match('^%a:') or home_cmp:match('^%a:') then
         cwd_cmp = cwd_cmp:lower()
         home_cmp = home_cmp:lower()
      end
      if cwd_cmp == home_cmp then
         return M.icons.home
      end
   end
   if cwd:match('[/\\]home[/\\][^/\\]+$') then
      return M.icons.home
   end

   return M.icons.folder
end

function M.prompt_for_pane(pane)
   local cwd_uri = pane and pane:get_current_working_dir() or nil
   local icon = M.location_icon(cwd_uri)
   local formatted = wezterm.format({
      { Foreground = { Color = M.palette.accent } },
      { Attribute = { Intensity = 'Bold' } },
      { Text = icon },
   })

   return {
      icon = icon,
      formatted = formatted,
   }
end

return M
