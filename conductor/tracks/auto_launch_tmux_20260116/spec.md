# Specification: Auto-launch Tmux

## Goal
Ensure that whenever the user opens a terminal (which launches Zsh), `tmux` is automatically started or attached.

## Requirements
1.  **Safety:** Do not launch `tmux` if already inside a `tmux` session (prevent nesting).
2.  **Session Management:**
    *   If a session exists, attach to it (optionally ask, but auto-attach is smoother).
    *   If no session exists, create a new one named `main` or similar.
3.  **Shell Integration:** Implement this logic in `.zshrc` so it works across any terminal emulator (WezTerm, Windows Terminal, VSCode terminal, etc.).
    *   *Constraint:* Might want to exclude VSCode or IntelliJ built-in terminals if desired, but "Ubuntu" implies the main WSL instance.
4.  **Simplicity:** Minimal impact on shell startup time.

## User Experience
*   User opens Windows Terminal / WezTerm.
*   Instead of a plain prompt, they are immediately placed into a Tmux session.
