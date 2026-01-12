# Tide Customization Options

## 1. OS Icons (Left Prompt)
The default is usually the logo of your distro (Ubuntu). We can change `tide_os_icon` to any Nerd Font glyph.
*   **Linux Tux:** ``
*   **Ubuntu:** ``
*   **Arch:** ``
*   **Fedora:** ``
*   **Generic Terminal:** ``
*   **Ghost/Pacman:** ``
*   **Northern Lights Star:** `★` or ``

## 2. Git Main Icon
The symbol displayed before the branch name. Variable: `tide_git_icon`.
*   **Default:** `` (Git logo)
*   **Branch:** ``
*   **Code:** ``
*   **Cherry:** ``

## 3. Git Status Colors (Nordic Palette)
We can map the Git states to specific Nord colors.

| State | Default Variable | Proposed Nord Color |
| :--- | :--- | :--- |
| **Clean** | `tide_git_bg_color` | Green (`A3BE8C`) or Blue (`81A1C1`) |
| **Dirty (!)** | `tide_git_color_dirty` | Yellow (`EBCB8B`) |
| **Staged (+)** | `tide_git_color_staged` | Green (`A3BE8C`) |
| **Untracked (?)** | `tide_git_color_untracked` | Cyan (`88C0D0`) |
| **Conflicted (~)** | `tide_git_color_conflicted` | Red (`BF616A`) |
| **Deleted** | N/A | Red (`BF616A`) |

## 4. Limitations
*   **Status Symbols:** The symbols for dirty (`!`), staged (`+`), untracked (`?`), etc., are **hardcoded** in the Tide function and cannot be changed via simple configuration variables without modifying the source code.
*   **GitHub Context:** Standard Tide does not have a specific "GitHub PR" item, but the Git item shows `⇡` (ahead) and `⇣` (behind) relative to upstream.
