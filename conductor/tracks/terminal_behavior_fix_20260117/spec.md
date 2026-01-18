# Specification: Fix Terminal Behavior & Finalize Migration

## Overview
This track addresses two issues: 
1. The `zshrc` auto-launch logic for Tmux currently attaches every new terminal tab to the same session/directory, preventing independent work. 
2. The project directory still contains legacy WezTerm configuration files that are no longer needed after the migration to Windows Terminal.

The goal is to modify the shell environment to launch independent Tmux sessions starting in the home directory (`~`) and to remove all WezTerm-specific artifacts.

## Functional Requirements
- **Independent Sessions:** Modify `.zshrc` so that new terminal windows/tabs launch a new, unique Tmux session instead of automatically attaching to the first existing one.
- **Home Directory Enforcement:** Ensure that every new shell session (and Tmux session) explicitly starts at `~` (Home), regardless of the directory of the previous tab.
- **Auto-Cleanup:** Delete all files and directories associated with the legacy WezTerm configuration.

## Non-Functional Requirements
- **Shell Performance:** The Tmux detection/launch logic must be fast and not noticeably delay shell startup.
- **Safety:** The logic should only run in interactive shells and not nest Tmux sessions.

## Acceptance Criteria
- [x] Opening a new tab in Windows Terminal starts a new, independent Tmux session.
- [x] The new session starts in the `~` directory.
- [x] Files `wezterm.lua`, `LICENSE`, `README.md` (legacy), and directories `config/`, `events/`, `backdrops/`, `inspo/` are removed from the project root.
- [x] Starship prompt and Zsh plugins continue to function correctly in the new sessions.

## Out of Scope
- Migrating WezTerm-specific features (like background images) to Windows Terminal.
- Configuring advanced Tmux session management plugins (e.g., tmux-resurrect).
