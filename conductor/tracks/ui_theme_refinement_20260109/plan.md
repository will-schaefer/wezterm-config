# Plan - UI Theme Refinement

## Phase 1: Color Foundation [checkpoint: bb65914]
- [x] Task: Define "Electric ANSI" palette in WezTerm colors abe44af
    - [x] Sub-task: Write verification script to display all ANSI colors
    - [x] Sub-task: Implement the new color palette in `colors/custom.lua`
- [x] Task: Synchronize Neovim theme with the new palette 00b0772
    - [x] Sub-task: Update `nordic.nvim` configuration for Aurora accents
- [~] Task: Conductor - User Manual Verification 'Color Foundation' (Protocol in workflow.md)

## Phase 2: Animations & Refinements
- [x] Task: Implement Aurora animations in WezTerm
    - [x] Sub-task: Configure cursor animations (movement/blink)
    - [x] Sub-task: Configure window and tab transition animations
- [x] Task: Finalize Transparency and Status Bars
    - [x] Sub-task: Verify 85% opacity and blur settings
    - [x] Sub-task: Update Lualine sections to use the new "Electric" accents
- [~] Task: Conductor - User Manual Verification 'Animations & Refinements' (Protocol in workflow.md)
