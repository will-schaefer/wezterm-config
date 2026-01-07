# WezTerm Color Schemes & Themes Inspiration

## Downloaded Screenshots (in this folder)
- `catppuccin-wezterm-screenshot.webp` - Official Catppuccin theme (331⭐)

## Popular Color Themes for WezTerm

### 1. Catppuccin (331⭐) ⭐ MOST POPULAR
**URL**: https://github.com/catppuccin/wezterm
**Built into WezTerm**: Yes! 
**Flavors**: 
- Mocha (dark)
- Macchiato (dark) 
- Frappe (dark)
- Latte (light)

**Usage**:
```lua
config.color_scheme = "Catppuccin Mocha"  -- or Macchiato, Frappe, Latte
```

**Auto Dark/Light Mode**:
```lua
local wezterm = require "wezterm"

function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Catppuccin Mocha"
  else
    return "Catppuccin Latte"
  end
end

config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
```

**Custom Overrides**:
```lua
local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom.background = "#000000"
custom.tab_bar.background = "#040404"
config.color_schemes = { ["OLEDppuccin"] = custom }
config.color_scheme = "OLEDppuccin"
```

### 2. Tokyo Night
**Built into WezTerm**: Yes
**Variants**: 
- Tokyo Night
- Tokyo Night Storm
- Tokyo Night Moon

**Usage**:
```lua
config.color_scheme = "Tokyo Night"
```

### 3. Nord
**Built into WezTerm**: Yes
**Usage**:
```lua
config.color_scheme = "Nord"
```

### 4. Gruvbox
**Built into WezTerm**: Yes (multiple variants)
**Variants**:
- Gruvbox Dark
- Gruvbox Light
- Gruvbox Material

**Usage**:
```lua
config.color_scheme = "Gruvbox Dark"
```

### 5. Poimandres (492⭐)
**URL**: https://github.com/olivercederborg/poimandres.nvim
**Built into WezTerm**: Yes
**Features**: Supports WezTerm, Neovim, Kitty, Alacritty

**Usage**:
```lua
config.color_scheme = "Poimandres"
```

### 6. Dracula
**Built into WezTerm**: Yes
**Usage**:
```lua
config.color_scheme = "Dracula"
```

### 7. One Dark
**Built into WezTerm**: Yes
**Usage**:
```lua
config.color_scheme = "One Dark (Gogh)"
```

### 8. Solarized
**Built into WezTerm**: Yes
**Variants**: Light and Dark
**Usage**:
```lua
config.color_scheme = "Solarized Dark"
-- or
config.color_scheme = "Solarized Light"
```

## All Built-in WezTerm Color Schemes

WezTerm includes 500+ color schemes! Browse them at:
https://wezfurlong.org/wezterm/colorschemes/index.html

### Popular Categories:
- **Dark**: Mocha, Tokyo Night, Nord, Dracula, OneDark
- **Light**: Catppuccin Latte, Solarized Light, GitHub Light
- **Pastel**: Catppuccin, Rosé Pine
- **High Contrast**: Gruvbox, Monokai

## Creating Custom Color Schemes

### Method 1: Override Built-in Scheme
```lua
local wezterm = require 'wezterm'
local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]

-- Customize colors
custom.background = "#1a1b26"
custom.foreground = "#c0caf5"
custom.cursor_bg = "#c0caf5"
custom.cursor_border = "#c0caf5"
custom.selection_bg = "#33467c"
custom.selection_fg = "#c0caf5"

-- Tab bar colors
custom.tab_bar.background = "#1a1b26"
custom.tab_bar.active_tab.bg_color = "#7aa2f7"
custom.tab_bar.active_tab.fg_color = "#1a1b26"

return {
  color_schemes = {
    ["MyCustom"] = custom,
  },
  color_scheme = "MyCustom",
}
```

### Method 2: Define from Scratch
```lua
return {
  color_schemes = {
    ["MyScheme"] = {
      foreground = "#dcd7ba",
      background = "#1f1f28",
      
      cursor_bg = "#c8c093",
      cursor_fg = "#1f1f28",
      cursor_border = "#c8c093",
      
      selection_fg = "#c8c093",
      selection_bg = "#2d4f67",
      
      scrollbar_thumb = "#16161d",
      split = "#16161d",
      
      ansi = {
        "#090618", "#c34043", "#76946a", "#c0a36e",
        "#7e9cd8", "#957fb8", "#6a9589", "#c8c093",
      },
      brights = {
        "#727169", "#e82424", "#98bb6c", "#e6c384",
        "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba",
      },
      
      tab_bar = {
        background = "#1f1f28",
        active_tab = {
          bg_color = "#7e9cd8",
          fg_color = "#1f1f28",
        },
        inactive_tab = {
          bg_color = "#2a2a37",
          fg_color = "#727169",
        },
        new_tab = {
          bg_color = "#1f1f28",
          fg_color = "#727169",
        },
      },
    },
  },
  color_scheme = "MyScheme",
}
```

## Syncing with Neovim

### bg.nvim Plugin (163⭐)
**URL**: https://github.com/typicode/bg.nvim
**Features**: Auto-sync terminal background with Neovim colorscheme
**Supports**: Alacritty, Kitty, Foot, WezTerm

## Tips for Choosing a Color Scheme

1. **Eye Strain**: Warmer colors (Catppuccin Mocha, Nord) are easier on eyes
2. **Contrast**: High contrast (Gruvbox) for bright environments
3. **Consistency**: Match with your Neovim/IDE theme
4. **Time of Day**: Use auto dark/light switching
5. **Monitor Type**: OLED benefits from true black backgrounds

## Next Steps

1. ✅ Downloaded Catppuccin screenshot
2. ⏭️ Next: Layout/pane configurations
3. ⏭️ Then: Background/transparency effects

## Resources
- WezTerm Color Schemes: https://wezfurlong.org/wezterm/colorschemes/index.html
- Catppuccin Ports: https://github.com/catppuccin/catppuccin
- Color Scheme Generator: https://terminal.sexy/
