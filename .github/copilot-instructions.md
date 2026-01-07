# GitHub Copilot Instructions - WezTerm Configuration

## Project Overview
This is a modular WezTerm terminal configuration written in Lua, forked from [KevinSilvester/wezterm-config](https://github.com/KevinSilvester/wezterm-config). The configuration provides a highly customizable terminal experience with features like background image management, custom key bindings, GPU adapter selection, and status bar customization.

## Architecture & Structure

### Directory Layout
- **`config/`** - Core configuration modules (appearance, bindings, domains, fonts, general settings, launch profiles)
- **`events/`** - Event handlers for UI customization (status bars, tab titles, GUI startup)
- **`utils/`** - Utility modules (backdrop management, GPU adapter selection)
- **`colors/`** - Color scheme definitions
- **`backdrops/`** - Background images storage
- **`wezterm.lua`** - Main entry point that orchestrates all modules

### Module System
- Uses a fluent/builder pattern via `Config:init():append()` chain
- Each module returns a table that gets merged into the main config
- Event modules use `.setup()` pattern for initialization

## Coding Standards

### Lua Style
- **Indentation**: 3 spaces (match existing style)
- **Naming**: `snake_case` for functions/variables, `PascalCase` for classes/modules
- **Requires**: Use relative requires (`require('config.appearance')`)
- **Comments**: Keep minimal; explain "why" not "what"
- **Tables**: Prefer explicit returns, avoid mutating global state

### WezTerm API Usage
- Always check WezTerm API version compatibility (minimum: `20240127-113634-bbcac864`)
- Reference official docs: <https://wezfurlong.org/wezterm/>
- Use `wezterm.on()` for event registration
- Prefer declarative config over imperative when possible

## Key Features to Preserve

### Background Management (`utils/backdrops.lua`)
- Supports cycling, random selection, and fuzzy search of images
- Toggle background focus mode
- Don't break the fluent API (`set_focus()`, `set_images()`, `random()`)

### Key Bindings (`config/bindings.lua`)
- Uses `SUPER` (Alt on Win/Linux, Super on macOS) and `SUPER_REV` (with Ctrl)
- Leader key: `SUPER_REV + Space`
- Avoid conflicts with OS-level shortcuts
- Document new bindings in README.md

### GPU Adapter Selection (`utils/gpu_adapter.lua`)
- Only works when `front_end = "WebGpu"`
- Selects best GPU + graphics API combo automatically
- Don't modify selection logic without performance testing

### Status Bars (`events/*-status.lua`)
- Left status: workspace/tab info
- Right status: time/date display
- Customizable via setup options

## Development Guidelines

### Making Changes
1. **Test locally** - WezTerm reloads config on save (no restart needed)
2. **Match existing patterns** - Follow the module structure and API style
3. **Update README.md** - Document new features, bindings, or config options
4. **Platform compatibility** - Consider macOS, Linux, and Windows differences

### Adding New Features
- New config options → `config/` directory
- New event handlers → `events/` directory
- New utilities → `utils/` directory
- Update `wezterm.lua` if module needs initialization

### Debugging
- Use `F12` to show debug overlay
- Check WezTerm logs: `wezterm show-messages`
- Test with: `wezterm --config-file /path/to/wezterm.lua start`

## Common Tasks

### Adding a Key Binding
1. Edit `config/bindings.lua`
2. Add to appropriate section (tabs, panes, windows, etc.)
3. Update README.md key bindings table
4. Test on your platform

### Adding a Color Scheme
1. Create file in `colors/` directory
2. Return a WezTerm color scheme table
3. Reference in `config/appearance.lua`

### Customizing for User
- **SSH/WSL domains**: Edit `config/domains.lua`
- **Shell preferences**: Edit `config/launch.lua`
- **Font settings**: Edit `config/fonts.lua`
- **Background images**: Place in `backdrops/` or configure path in `wezterm.lua`

## Things to Avoid
- ❌ Breaking the fluent API pattern in main config
- ❌ Adding dependencies beyond WezTerm's built-in Lua
- ❌ OS-specific code without cross-platform fallbacks
- ❌ Hardcoded paths (use `wezterm.home_dir` or relative paths)
- ❌ Modifying core event handler signatures without updating all call sites

## References
- **WezTerm Docs**: <https://wezfurlong.org/wezterm/>
- **Original Config**: <https://github.com/KevinSilvester/wezterm-config>
- **Lua 5.4 Manual**: <https://www.lua.org/manual/5.4/>
- **wgpu Platforms**: <https://github.com/gfx-rs/wgpu#supported-platforms>
