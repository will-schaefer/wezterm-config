# Technology Stack

## Core Applications
- **WezTerm:** GPU-accelerated terminal emulator serving as the visual front-end.
- **Tmux:** Terminal multiplexer for managing persistent sessions and pane layouts.
- **Neovim:** Primary text editor and IDE, heavily customized for this environment.
- **Tide:** Asynchronous, Fish-native prompt for a fast and informative shell experience.

## Scripting & Shell Environment
- **Lua:** Primary configuration language for WezTerm and Neovim customization.
- **Fish:** Primary interactive shell for the user's environment.
- **Shell (Bash/Zsh):** Used for cross-platform environment setup and utility scripts.

## Shell Configuration (Fish + Tide)
- **Prompt Theme:** Tide (Northern Lights / Nordic Aesthetic)
- **Customizations:**
    - **OS Icon:** Arch Linux (``) with Nordic Blue background (`81A1C1`).
    - **Git Icon:** GitHub Logo (``).
    - **Git Colors:** Nordic Palette (Clean: `A3BE8C`, Dirty: `EBCB8B`, Conflicted: `BF616A`).
    - **Git Placement:** Moved to the Right Prompt for a cleaner left-hand experience.
    - **Directory Color:** Nordic Grey-Blue (`4C566A`) for visual harmony.

## Development Approach
- **Role-Based Development:** The user focuses on design, UX, and requirement definition, while the AI Agent handles all implementation coding in Lua and Shell.