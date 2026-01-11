# Plan - Sleek Starship Prompt Redesign

## Phase 1: Prototype Generation
- [x] Task: Create "Neon Cyber" prototype 487d35f
    - [ ] Sub-task: Draft `starship.neon.toml` with high-contrast colors and minimal symbols.
- [x] Task: Create "Nord Minimal" prototype e35284d
    - [ ] Sub-task: Draft `starship.minimal.toml` with subtle Nord colors and text-based separators.
- [x] Task: Create "Bubble Pop" prototype c36962e
    - [ ] Sub-task: Draft `starship.bubble.toml` using rounded powerline glyphs and pill-shaped modules.
- [x] Task: Conductor - User Manual Verification 'Phase 1' (Protocol in workflow.md) fba856e
    *   **Goal:** Present the 3 options to the user and get a final decision.

## Phase 2: Implementation & Refinement
- [ ] Task: Apply Selected Theme
    - [ ] Sub-task: Backup existing `starship.toml`.
    - [ ] Sub-task: Overwrite `starship.toml` with the content of the selected prototype.
- [ ] Task: Tune Directory Truncation
    - [ ] Sub-task: Verify `truncation_length` and `fish_style_pwd_dir_length` settings match the "smart truncation" requirement.
- [ ] Task: Conductor - User Manual Verification 'Phase 2' (Protocol in workflow.md)
    *   **Goal:** User confirms the new prompt looks correct in their actual terminal.

## Phase 3: Cleanup
- [ ] Task: Remove prototype files
    - [ ] Sub-task: Delete the unused `starship.*.toml` files.