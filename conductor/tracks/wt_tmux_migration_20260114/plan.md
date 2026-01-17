# Implementation Plan - WezTerm to Windows Terminal + Tmux Migration

This plan outlines the steps to migrate from WezTerm to Windows Terminal, switch to Zsh with Starship, and optimize the Tmux workflow.

## Phase 1: Shell Migration (Zsh + Starship) [checkpoint: 44478b6]
Configure the shell environment to match the desired functionality and aesthetic.

- [x] **Task: Install and Initialize Zsh** a506dfe
    - [ ] Install Zsh on Ubuntu (WSL2) if not already present.
    - [ ] Create a basic `.zshrc` file that sets Zsh as the default shell for the user.
- [x] **Task: Configure Starship with Tide Aesthetic** de614a9
    - [ ] Update `starship.toml` to include the Arch Linux icon (``) with Nordic Blue background.
    - [ ] Configure Git status indicators and colors in `starship.toml` to match the "Tide" Nordic palette.
    - [ ] Adjust the layout to move Git status to the right (if possible in Starship) or optimize the left-hand prompt.
- [x] **Task: Implement Zsh Plugins (Fish-like Experience)** cfad170
    - [ ] Install `zsh-autosuggestions`.
    - [ ] Install `zsh-syntax-highlighting`.
    - [ ] Install/Configure `zsh-completions` for improved tab completion.
- [x] **Task: Verify Shell Functionality** cfad170
    - [ ] Write a script to verify that Zsh is the current shell and Starship is active.
    - [ ] Manually test tab completion and path suggestions.
- [x] Task: Conductor - User Manual Verification 'Shell Migration' (Protocol in workflow.md) 44478b6

## Phase 2: Windows Terminal Setup
Set up the terminal emulator with the project's visual theme and profile settings.

- [ ] **Task: Port Gemini Theme to Windows Terminal**
    - [ ] Extract the hex color values from the project's WezTerm Gemini theme/ANSI palette.
    - [ ] Create a Windows Terminal JSON color scheme fragment.
- [ ] **Task: Configure Default WSL Profile**
    - [ ] Update Windows Terminal `settings.json` to create/modify the Ubuntu profile.
    - [ ] Set the profile to launch `tmux` directly (which in turn launches Zsh).
    - [ ] Apply the custom Gemini color scheme and set font to "CodeNewRoman Nerd Font" or similar.
- [ ] Task: Conductor - User Manual Verification 'Windows Terminal Setup' (Protocol in workflow.md)

## Phase 3: Tmux & Workflow Optimization
Ensure the multiplexer handles all navigation and session management.

- [ ] **Task: Refine Tmux Configuration**
    - [ ] Verify `tmux.conf` supports seamless pane switching and Nordic styling.
    - [ ] Ensure Tmux starts with Zsh by default.
- [ ] Task: Conductor - User Manual Verification 'Tmux Optimization' (Protocol in workflow.md)

## Phase 4: Cleanup & Finalization
Remove obsolete files and perform a final system check.

- [ ] **Task: Repository Cleanup**
    - [ ] Delete `wezterm.lua`.
    - [ ] Delete the `config/` directory.
    - [ ] Delete the `events/` directory.
    - [ ] Delete the `backdrops/` and `inspo/` directories (if no longer needed for WT).
- [ ] **Task: Final Verification**
    - [ ] Confirm everything works from a cold start of Windows Terminal.
- [ ] Task: Conductor - User Manual Verification 'Cleanup & Finalization' (Protocol in workflow.md)
