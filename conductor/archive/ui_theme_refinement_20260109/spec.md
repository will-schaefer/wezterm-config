# Specification - UI Theme Refinement

## Overview
This track focuses on a complete visual overhaul of the terminal environment. The goal is to merge the "Northern Lights" (Nordic) aesthetic with a vibrant, high-visibility ANSI color palette inspired by the Gemini interface ("Electric ANSI").

## Functional Requirements
1. **Electric ANSI Theme:**
   - Define and apply a custom ANSI palette in WezTerm.
   - Use high-visibility colors: Cyan, Neon Pink, Light Purple, and Muted Yellows.
   - Ensure contrast against the "Bright Nord" background.
2. **Northern Lights UI:**
   - Configure Neovim with the `nordic.nvim` theme, emphasizing Aurora accents.
   - Implement fluid animations in WezTerm for the cursor and window/tab transitions.
   - Maintain 85% background transparency with blur.
3. **Status Bar Synergy:**
   - Harmonize the Lualine (Neovim) and WezTerm status bars to use the new color palette.

## Acceptance Criteria
- WezTerm displays the Gemini-inspired ANSI colors correctly in terminal output.
- Neovim's theme is active and matches the terminal's visual style.
- Cursor and transition animations are visible and fluid.
- Text remains highly readable across all UI elements.
- Background transparency and blur are consistently applied.
