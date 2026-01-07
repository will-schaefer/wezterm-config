# WezTerm Layouts, Panes & Transparency Effects

## Background Transparency & Blur Effects

### Basic Transparency
```lua
config.window_background_opacity = 0.9  -- 0.0 (invisible) to 1.0 (opaque)
```

### macOS Blur Effect
```lua
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20  -- macOS only, 0-100
```

### Acrylic Effect (Windows 11)
```lua
-- Windows 11 acrylic background
config.win32_acrylic_accent_color = "#1e1e2e"  -- Catppuccin Mocha base
config.window_background_opacity = 0.9
```

### Background Images
```lua
config.background = {
  {
    source = { File = wezterm.home_dir .. "/Pictures/wallpaper.jpg" },
    opacity = 0.8,  -- Image opacity
    hsb = {
      brightness = 0.02,  -- Darken the image
      hue = 1.0,
      saturation = 1.0,
    },
  },
}
config.window_background_opacity = 0.95  -- Overall window opacity
```

### Advanced Multi-Layer Background
```lua
config.background = {
  -- Base color layer
  {
    source = { Color = "#1e1e2e" },
    width = "100%",
    height = "100%",
  },
  -- Image layer
  {
    source = { File = wezterm.home_dir .. "/wallpaper.png" },
    opacity = 0.3,
    horizontal_align = "Center",
    vertical_align = "Middle",
  },
  -- Gradient overlay
  {
    source = {
      Gradient = {
        colors = { "#1e1e2e", "#11111b" },
        orientation = "Vertical",
      },
    },
    width = "100%",
    height = "100%",
    opacity = 0.5,
  },
}
```

## Pane Management

### Split Pane Keybindings
```lua
local config = {}

config.keys = {
  -- Split vertically (left/right)
  {
    key = '\\',
    mods = 'ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  -- Split horizontally (top/bottom)
  {
    key = '-',
    mods = 'ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  -- Close current pane
  {
    key = 'w',
    mods = 'ALT',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  -- Toggle pane zoom (fullscreen current pane)
  {
    key = 'z',
    mods = 'ALT',
    action = wezterm.action.TogglePaneZoomState,
  },
}
```

### Navigate Between Panes
```lua
-- Vim-style navigation
{
  key = 'h',
  mods = 'ALT|CTRL',
  action = wezterm.action.ActivatePaneDirection 'Left',
},
{
  key = 'l',
  mods = 'ALT|CTRL',
  action = wezterm.action.ActivatePaneDirection 'Right',
},
{
  key = 'k',
  mods = 'ALT|CTRL',
  action = wezterm.action.ActivatePaneDirection 'Up',
},
{
  key = 'j',
  mods = 'ALT|CTRL',
  action = wezterm.action.ActivatePaneDirection 'Down',
},
```

### Resize Panes
```lua
config.leader = { key = 'Space', mods = 'CTRL|ALT', timeout_milliseconds = 2000 }

config.keys = {
  -- Enter resize mode with Leader + r
  {
    key = 'r',
    mods = 'LEADER',
    action = wezterm.action.ActivateKeyTable {
      name = 'resize_pane',
      one_shot = false,
    },
  },
}

config.key_tables = {
  resize_pane = {
    { key = 'h', action = wezterm.action.AdjustPaneSize { 'Left', 1 } },
    { key = 'l', action = wezterm.action.AdjustPaneSize { 'Right', 1 } },
    { key = 'k', action = wezterm.action.AdjustPaneSize { 'Up', 1 } },
    { key = 'j', action = wezterm.action.AdjustPaneSize { 'Down', 1 } },
    -- Exit resize mode
    { key = 'Escape', action = 'PopKeyTable' },
  },
}
```

### Swap Panes
```lua
{
  key = 'p',
  mods = 'LEADER',
  action = wezterm.action.PaneSelect {
    mode = 'SwapWithActive',
  },
}
```

### Rotate Panes
```lua
{
  key = '[',
  mods = 'ALT|CTRL',
  action = wezterm.action.RotatePanes 'Clockwise',
},
{
  key = ']',
  mods = 'ALT|CTRL',
  action = wezterm.action.RotatePanes 'CounterClockwise',
},
```

## Window Decorations & Padding

### Native Window Decorations
```lua
-- macOS: integrated title bar
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

-- Hide title bar completely
config.window_decorations = "RESIZE"

-- Full decorations (default)
config.window_decorations = "TITLE | RESIZE"
```

### Window Padding
```lua
config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}

-- Or use cell units
config.window_padding = {
  left = '1cell',
  right = '1cell',
  top = '0.5cell',
  bottom = '0.5cell',
}
```

### Tab Bar Position & Style
```lua
-- Tab bar at bottom
config.tab_bar_at_bottom = true

-- Hide tab bar when only one tab
config.hide_tab_bar_if_only_one_tab = true

-- Tab bar styling
config.use_fancy_tab_bar = false  -- Use retro tab bar
config.tab_max_width = 25

-- Tab bar colors
config.colors = {
  tab_bar = {
    background = "#1e1e2e",
    active_tab = {
      bg_color = "#89b4fa",
      fg_color = "#1e1e2e",
      intensity = "Bold",
    },
    inactive_tab = {
      bg_color = "#313244",
      fg_color = "#cdd6f4",
    },
    inactive_tab_hover = {
      bg_color = "#45475a",
      fg_color = "#cdd6f4",
    },
    new_tab = {
      bg_color = "#1e1e2e",
      fg_color = "#cdd6f4",
    },
    new_tab_hover = {
      bg_color = "#313244",
      fg_color = "#cdd6f4",
    },
  },
}
```

## Advanced Layout Configurations

### Smart Pane Splits (Context-Aware)
```lua
wezterm.on('smart-split', function(window, pane)
  local dim = pane:get_dimensions()
  if dim.pixel_height > dim.pixel_width then
    window:perform_action(
      wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
      pane
    )
  else
    window:perform_action(
      wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
      pane
    )
  end
end)

config.keys = {
  {
    key = 's',
    mods = 'ALT',
    action = wezterm.action.EmitEvent 'smart-split',
  },
}
```

### Pane Indicators
```lua
-- Show which pane is active
config.inactive_pane_hsb = {
  saturation = 0.8,
  brightness = 0.6,
}
```

### Pane Selection Mode
```lua
{
  key = '9',
  mods = 'ALT',
  action = wezterm.action.PaneSelect {
    alphabet = '1234567890',
    mode = 'Activate',
  },
},
```

## Workspace Management

### Create and Switch Workspaces
```lua
-- Create new workspace
{
  key = 'n',
  mods = 'LEADER',
  action = wezterm.action.PromptInputLine {
    description = 'Enter name for new workspace',
    action = wezterm.action_callback(function(window, pane, line)
      if line then
        window:perform_action(
          wezterm.action.SwitchToWorkspace {
            name = line,
          },
          pane
        )
      end
    end),
  },
},

-- Show workspace launcher
{
  key = 'w',
  mods = 'LEADER',
  action = wezterm.action.ShowLauncherArgs {
    flags = 'FUZZY|WORKSPACES',
  },
},
```

## Performance Tips for Transparency

1. **GPU Acceleration**: Ensure WebGpu is enabled
```lua
config.front_end = "WebGpu"
```

2. **Limit Transparency**: Values between 0.85-0.95 work best
```lua
config.window_background_opacity = 0.90
```

3. **Disable Blur on Slower Machines**:
```lua
config.macos_window_background_blur = 0  -- Disable blur
```

4. **Use Simpler Backgrounds**:
```lua
-- Solid color is fastest
config.background = {
  {
    source = { Color = "#1e1e2e" },
  },
}
```

## Example: Complete Aesthetic Config

```lua
local wezterm = require 'wezterm'
local config = {}

-- Transparency & Blur
config.window_background_opacity = 0.92
config.macos_window_background_blur = 15

-- Window Decorations
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_padding = {
  left = '2cell',
  right = '2cell',
  top = '1cell',
  bottom = '1cell',
}

-- Tab Bar
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.hide_tab_bar_if_only_one_tab = true

-- Panes
config.inactive_pane_hsb = {
  saturation = 0.7,
  brightness = 0.5,
}

-- Background Image (optional)
config.background = {
  {
    source = { File = wezterm.home_dir .. "/.config/wezterm/backdrops/wallpaper.jpg" },
    opacity = 0.15,
    hsb = { brightness = 0.03 },
  },
}

return config
```

## Resources
- Pane Navigation: https://wezfurlong.org/wezterm/config/lua/keyassignment/ActivatePaneDirection.html
- Background Config: https://wezfurlong.org/wezterm/config/lua/config/background.html
- Window Appearance: https://wezfurlong.org/wezterm/config/appearance.html
