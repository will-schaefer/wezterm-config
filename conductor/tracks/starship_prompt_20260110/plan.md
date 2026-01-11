# Plan - Sleek Starship Prompt Redesign

## Phase 1: Prototype Generation [checkpoint: 3e5ab76]
- [x] Task: Create "Neon Cyber" prototype 487d35f
    - [ ] Sub-task: Draft `starship.neon.toml` with high-contrast colors and minimal symbols.
- [x] Task: Create "Nord Minimal" prototype e35284d
    - [ ] Sub-task: Draft `starship.minimal.toml` with subtle Nord colors and text-based separators.
- [x] Task: Create "Bubble Pop" prototype c36962e
    - [ ] Sub-task: Draft `starship.bubble.toml` using rounded powerline glyphs and pill-shaped modules.
- [x] Task: Conductor - User Manual Verification 'Phase 1' (Protocol in workflow.md) fba856e
    *   **Goal:** Present the 3 options to the user and get a final decision.

## Phase 2: Implementation & Refinement [checkpoint: 58bd5f4]
- [x] Task: Apply Selected Theme a946b5f
    - [ ] Sub-task: Backup existing `starship.toml`.
    - [ ] Sub-task: Overwrite `starship.toml` with the content of the selected prototype.
- [x] Task: Tune Directory Truncation f6d4948
- [x] Task: Update WezTerm font size to 16 308965c
- [x] Task: Conductor - User Manual Verification 'Phase 2' (Protocol in workflow.md) 4003b59
    *   **Goal:** User confirms the new prompt looks correct in their actual terminal.

## Phase 3: Cleanup
- [x] Task: Remove prototype files ca463ea
    - [ ] Sub-task: Delete the unused `starship.*.toml` files.