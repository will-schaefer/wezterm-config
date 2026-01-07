# WezTerm Status Bar & Tab Design Inspiration

## Downloaded Screenshots (in this folder)
- `kevin-silvester-screenshot-1.png` - From KevinSilvester/wezterm-config (863⭐)
- `kevin-silvester-screenshot-2.png` - From KevinSilvester/wezterm-config
- `qiansong-screenshot-1.png` - From QianSong1/wezterm-config (206⭐)
- `qiansong-screenshot-2.png` - From QianSong1/wezterm-config

## Top Repositories for Status Bar & Tab Inspiration

### 1. KevinSilvester/wezterm-config (863⭐)
**URL**: https://github.com/KevinSilvester/wezterm-config
**Features**:
- Custom left and right status bars
- Tab title formatting with icons
- Background image selector with fuzzy search
- GPU adapter selector
- Modular event system for UI customization

**Status Bar Implementation**:
- `events/left-status.lua` - Workspace/tab info
- `events/right-status.lua` - Time/date display
- `events/tab-title.lua` - Custom tab titles with icons
- `events/new-tab-button.lua` - Custom tab button

**Key Takeaway**: Highly modular approach with separate event handlers

### 2. QianSong1/wezterm-config (206⭐)
**URL**: https://github.com/QianSong1/wezterm-config
**Features**:
- Cross-platform (Windows/Linux/macOS)
- Clean tab bar design
- Chinese documentation
- Based on KevinSilvester's config

**Key Takeaway**: Demonstrates Windows-specific adaptations

### 3. dragonlobster/wezterm-config (63⭐)
**URL**: https://github.com/dragonlobster/wezterm-config
**Features**:
- Leader key active indicator (wave icon)
- Two tab styles: rounded vs square
- Optional window border
- Catppuccin Macchiato theme
- Simple, clean implementation

**Key Takeaway**: Great example of customizable tab bar styles and prefix indicators

### 4. folke/dot
**URL**: https://github.com/folke/dot
**Features**:
- Created by @folke (LazyVim author)
- Minimalist design philosophy
- config/wezterm/tabs.lua - Custom tab formatting

**Key Takeaway**: Clean, minimal approach from a respected developer

### 5. rockyzhang24/dotfiles (222⭐)
**URL**: https://github.com/rockyzhang24/dotfiles
**Features**:
- Supports Ghostty, Kitty, Wezterm, Alacritty
- Comprehensive dotfiles setup
- Arctic.nvim color theme
- Clean terminal aesthetics

**Key Takeaway**: Multi-terminal support with consistent theming

### 6. yutkat/dotfiles (913⭐) - Highest starred!
**URL**: https://github.com/yutkat/dotfiles
**Features**:
- NixOS + ArchLinux configs
- Hyprland desktop setup
- Neovim + Wezterm integration
- Comprehensive configuration

**Key Takeaway**: Enterprise-level dotfiles management

## Code Examples to Explore

### Tab Formatting
- `folke/dot` - config/wezterm/tabs.lua
- `akthe-at/dotfiles` - .config/wezterm/events/format-tab-title.lua
- `loqusion/dotfiles` - .config/wezterm/tab.lua

### Status Bars
- `mohitsinghs/dotfiles` - config/wezterm/status.lua
- `kazu914/dotfiles` - wezterm/ui_components.lua

## Next Steps

1. ✅ Downloaded 4 screenshots for visual reference
2. ⏭️ Next: Explore color schemes and themes
3. ⏭️ Then: Layout/pane configurations
4. ⏭️ Finally: Background/transparency effects

## Resources
- WezTerm Official Docs: https://wezfurlong.org/wezterm/
- format-tab-title event: https://wezfurlong.org/wezterm/config/lua/window-events/format-tab-title.html
- update-status event: https://wezfurlong.org/wezterm/config/lua/window-events/update-right-status.html
