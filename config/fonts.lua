local wezterm = require('wezterm')
local platform = require('utils.platform')

-- Matching Windows Terminal font
local font_family = 'CodeNewRoman Nerd Font Mono'
-- Alternatives:
-- local font_family = 'iMWritingMono Nerd Font Mono'
-- local font_family = 'Maple Mono NF'
-- local font_family = 'Hack Nerd Font Mono'

local font_size = 15  -- Matching Windows Terminal

return {
   font = wezterm.font({
      family = font_family,
      weight = 'Medium',
   }),
   font_size = font_size,
   line_height = 1.2, -- Matching cellHeight: 1.2

   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
