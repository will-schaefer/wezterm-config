-- Gemini-Inspired "Electric Nord" Theme
-- stylua: ignore
local palette = {
   background = '#2E3440',
   foreground = '#FFFFFF', -- Bright White for better visibility
   cursor     = '#D4A04A',
   selection  = '#4C566A',

   -- Electric ANSI Colors
   black      = '#3B4252',
   red        = '#FF5C57', -- Electric Red
   green      = '#5AF78E', -- Electric Green
   yellow     = '#F3F99D', -- Electric Yellow
   blue       = '#57C7FF', -- Electric Blue
   purple     = '#FF6AC1', -- Neon Pink / Purple
   cyan       = '#9AEDFE', -- Electric Cyan
   white      = '#F1F1F0',

   -- Bright Variants
   brightBlack  = '#4C566A',
   brightRed    = '#FF6E67',
   brightGreen  = '#5AF78E',
   brightYellow = '#F3F99D',
   brightBlue   = '#57C7FF',
   brightPurple = '#FF92DF', -- Light Purple / Pink
   brightCyan   = '#A4FFFF',
   brightWhite  = '#FFFFFF',
}

local colorscheme = {
   foreground = palette.foreground,
   background = palette.background,
   cursor_bg = palette.cursor,
   cursor_border = palette.cursor,
   cursor_fg = palette.background,
   selection_bg = palette.selection,
   selection_fg = palette.foreground,

   ansi = {
      palette.black,
      palette.red,
      palette.green,
      palette.yellow,
      palette.blue,
      palette.purple,
      palette.cyan,
      palette.white,
   },
   brights = {
      palette.brightBlack,
      palette.brightRed,
      palette.brightGreen,
      palette.brightYellow,
      palette.brightBlue,
      palette.brightPurple,
      palette.brightCyan,
      palette.brightWhite,
   },

   tab_bar = {
      background = '#1C2128', -- Darker than main background
      inactive_tab_edge = '#1C2128',
      active_tab = {
         bg_color = '#2E3440', -- Nord Base
         fg_color = palette.foreground,
      },
      inactive_tab = {
         bg_color = '#1C2128',
         fg_color = '#D8DEE9',
      },
      inactive_tab_hover = {
         bg_color = '#252A33',
         fg_color = palette.foreground,
      },
      new_tab = {
         bg_color = '#1C2128',
         fg_color = palette.foreground,
      },
      new_tab_hover = {
         bg_color = '#252A33',
         fg_color = palette.cursor,
         italic = true,
      },
   },
   visual_bell = palette.red,
   indexed = {
      [16] = '#D08770', -- Orange/Peach
      [17] = palette.cursor,
   },
   scrollbar_thumb = '#4C566A',
   split = '#3B4252',
   compose_cursor = palette.cursor,
}

return colorscheme