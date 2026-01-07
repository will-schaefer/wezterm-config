-- Grok-inspired cyberpunk neon theme
-- stylua: ignore
local grok = {
   rosewater = '#FF007F',  -- Neon Magenta primary
   flamingo  = '#FF007F',
   pink      = '#FF007F',
   mauve     = '#BD00FF',  -- Neon Purple
   red       = '#FF007F',  -- Neon Magenta
   maroon    = '#FF007F',
   peach     = '#FFE600',  -- Neon Yellow
   yellow    = '#FFE600',
   green     = '#00FF9F',  -- Neon Green
   teal      = '#00FFFF',  -- Neon Cyan
   sky       = '#00FFFF',
   sapphire  = '#00B4FF',  -- Neon Blue
   blue      = '#00B4FF',
   lavender  = '#BD00FF',
   text      = '#F0F0F0',  -- Bright white text
   subtext1  = '#D0D0D0',
   subtext0  = '#A0A0A0',
   overlay2  = '#5A5A6E',
   overlay1  = '#4A4A5E',
   overlay0  = '#3A3A4E',
   surface2  = '#3D1A2D',  -- Magenta-tinted surface
   surface1  = '#121218',
   surface0  = '#0D0D12',
   base      = '#0A0A0F',  -- Very dark background
   mantle    = '#050508',
   crust     = '#020203',
} 
local mocha = grok  -- Use Grok colors as default

local colorscheme = {
   foreground = mocha.text,
   background = 'rgba(8, 8, 12, 0.85)',  -- Darker gray, 85% opaque
   cursor_bg = '#00FFFF',  -- Neon Cyan - POPS
   cursor_border = '#00FFFF',
   cursor_fg = mocha.crust,
   selection_bg = mocha.surface2,
   selection_fg = mocha.text,
   -- CGA-inspired ANSI palette for a 70s/80s terminal vibe.
   ansi = {
      '#000000', -- black
      '#AA0000', -- red
      '#00AA00', -- green
      '#AA5500', -- brown/yellow
      '#0000AA', -- blue
      '#AA00AA', -- magenta
      '#00AAAA', -- cyan
      '#AAAAAA', -- light gray
   },
   brights = {
      '#555555', -- dark gray
      '#FF5555', -- bright red
      '#55FF55', -- bright green
      '#FFFF55', -- bright yellow
      '#5555FF', -- bright blue
      '#FF55FF', -- bright magenta
      '#55FFFF', -- bright cyan
      '#FFFFFF', -- white
   },
   tab_bar = {
      background = 'rgba(0, 0, 0, 0.8)',
      active_tab = {
         bg_color = mocha.surface2,
         fg_color = mocha.text,
      },
      inactive_tab = {
         bg_color = mocha.surface0,
         fg_color = mocha.subtext1,
      },
      inactive_tab_hover = {
         bg_color = mocha.surface0,
         fg_color = mocha.text,
      },
      new_tab = {
         bg_color = mocha.base,
         fg_color = mocha.text,
      },
      new_tab_hover = {
         bg_color = mocha.mantle,
         fg_color = mocha.text,
         italic = true,
      },
   },
   visual_bell = mocha.red,
   indexed = {
      [16] = mocha.peach,
      [17] = mocha.rosewater,
   },
   scrollbar_thumb = mocha.surface2,
   split = mocha.overlay0,
   compose_cursor = mocha.flamingo,
}

return colorscheme
