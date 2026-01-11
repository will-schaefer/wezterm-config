# Specification - Sleek Starship Prompt Redesign

## Overview
This feature track focuses on redesigning the Starship prompt to achieve a "sleek," modern, and minimalist aesthetic for the terminal. The user has requested three distinct design options to choose from, prioritizing smart directory truncation and a visual overhaul of the current "Nord Banner" theme.

## Functional Requirements
1.  **Three Design Options:** The system must generate three distinct Starship configuration presets:
    *   **Option A: "Neon Cyber"** - A high-contrast, cyberpunk-inspired look using the "Electric" palette (Cyan/Pink/Green) with sharp angles or minimal separators.
    *   **Option B: "Nord Minimal"** - A refined, flattened version of the current theme. Less "banner-like," more subtle text-based elegance using the Nord palette.
    *   **Option C: "Bubble Pop"** - A rounded, pill-shaped design using powerline symbols (/) for a modern, "button" look.
2.  **Smart Directory Truncation:**
    *   All options must implement smart truncation (shortening folder names to 1 character when deep in the tree).
    *   **Constraint:** Set `truncation_length = 3` (or user preference if clarified during implementation).
    *   **Constraint:** Maintain `truncate_to_repo = true` for cleaner context in git projects.
3.  **Shell Integration:**
    *   The chosen design must be applied to `~/.config/starship.toml`.
    *   Changes must reflect immediately in the Fish shell.

## Acceptance Criteria
-   Three distinct `starship.toml` prototypes are presented to the user.
-   The user selects one design.
-   The selected design is applied to `~/.config/starship.toml`.
-   The prompt displays the directory with smart truncation (e.g., `~/p/my-app` instead of `~/projects/my-app` when deep).
-   The prompt works correctly in Fish shell.