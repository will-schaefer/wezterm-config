# Specification: Customize Tide Prompt Icons & Colors (Left Prompt)

## 1. Overview
The goal of this track is to refine the **Left Prompt** of our Tide configuration to perfectly match the "Northern Lights" aesthetic. We will focus on iterative exploration and customization of **Git status icons**, **OS icons**, and **additional Git/GitHub context** that is not currently enabled.

## 2. Scope
*   **Target Area:** Tide Left Prompt (`tide_left_prompt_items`).
*   **Key Customizations:**
    *   **Git Status:** Explore and implement alternative icons for various git states (clean, dirty, staged, untracked, etc.) and adjust colors to fit the Nordic palette.
    *   **OS Icon:** Review available OS icons and select a custom one if supported.
    *   **Information Density:** Audit available Tide items to identify missing Git/GitHub context (e.g., `git_user`, `github` PR status, upstream status) that can be added.
*   **Approach:** Iterative exploration. The agent will present options (variables and values), the user will select them, and the agent will apply them.

## 3. Action Items
1.  **Audit & Discovery:**
    *   List all available `tide_git_*` variables (icons and colors).
    *   List all available `tide_os_*` variables.
    *   List other relevant items that can be added to the left prompt (e.g., specific to GitHub context).
2.  **Git Customization:**
    *   Present icon options for Git status.
    *   Apply the user's selected icons and Nordic colors.
3.  **OS Customization:**
    *   Present OS icon options.
    *   Apply the selected icon/color.
4.  **Expansion:**
    *   Enable any identified "missing" context items (e.g., detailed upstream info) if desired.
5.  **Documentation:** Update `conductor/tech-stack.md` with the specific customizations applied.

## 4. Acceptance Criteria
*   Git status icons and colors are customized to the user's preference.
*   OS icon is finalized.
*   The user is aware of and has chosen whether to include additional Git/GitHub context.
*   The prompt remains performant and visually consistent with the theme.
