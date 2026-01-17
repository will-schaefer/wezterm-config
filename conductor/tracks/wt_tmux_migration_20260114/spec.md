# Specification - WezTerm to Windows Terminal + Tmux Migration

## Overview
The goal of this track is to migrate the primary terminal environment from WezTerm to Windows Terminal (WT). This includes moving away from the Fish shell in favor of **Zsh** enhanced with **Starship** for the prompt, while maintaining the "Northern Lights" aesthetic. The user intends to use Windows Terminal as their primary daily driver, utilizing WSL2 and Tmux for session and pane management.

## Functional Requirements
- **Auto-Tmux Integration:** Configure the default WSL2 (Ubuntu) profile in Windows Terminal to automatically attach to an existing Tmux session or create a new one upon launch.
- **Shell Migration:** 
    - Switch the primary shell from Fish to **Zsh**.
    - Configure **Starship** using the existing `starship.toml` for the prompt.
    - Implement Zsh plugins for path completion, autosuggestions, and syntax highlighting to match the "Fish-like" experience.
- **Theme Porting:** Create a custom Windows Terminal JSON color scheme that replicates the existing "Gemini/Northern Lights" aesthetic.
- **Tmux-Centric Workflow:** Optimize the Tmux configuration to handle all pane and window management.
- **Cleanup:** Remove WezTerm-specific configuration files (`wezterm.lua`, `config/`, `events/`, etc.) once the Windows Terminal setup is verified.

## Non-Functional Requirements
- **Efficiency:** Tab completion for paths and commands must be fast and intuitive.
- **Visual Fidelity:** The "Northern Lights" theme must be consistent across Windows Terminal and the Zsh/Starship environment.

## Acceptance Criteria
- [ ] Windows Terminal launches directly into a Tmux session in WSL2 running Zsh.
- [ ] The Zsh prompt uses Starship with the current configuration.
- [ ] Tab completion for paths and commands is functional in Zsh.
- [ ] The Windows Terminal color scheme matches the "Gemini" theme colors.
- [ ] All WezTerm-specific configuration files are removed from the repository.

## Out of Scope
- Support for other terminal emulators (Alacritty, Kitty).
- Configuration of Windows Terminal's native tabs (since Tmux handles windows/tabs).
