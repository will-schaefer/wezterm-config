# Plan: WezTerm Tab Bar & Status Styling

## Phase 1: Tech Stack & Baseline Verification
- [x] Task: Audit current `config/appearance.lua` and `events/right-status.lua` for existing tab/status styling logic [7bc6aaa]
- [x] Task: Research WezTerm `config.colors.tab_bar` and `wezterm.on('format-tab-title', ...)` capabilities [7bc6aaa]
- [ ] Task: Conductor - User Manual Verification 'Phase 1: Tech Stack & Baseline Verification' (Protocol in workflow.md)

## Phase 2: Right-Status (Clock) Refinement
- [ ] Task: Write Tests: Verify `right-status.lua` can return formatted text with specific colors and fonts
- [ ] Task: Implement: Update `events/right-status.lua` to use CodeNewRoman Nerd Font in Bright White
- [ ] Task: Implement: Ensure the background of the right-status area matches the window background
- [ ] Task: Conductor - User Manual Verification 'Phase 2: Right-Status (Clock) Refinement' (Protocol in workflow.md)

## Phase 3: Tab Bar Background & Inactive Tabs
- [ ] Task: Write Tests: Verify tab bar color configuration logic
- [ ] Task: Implement: Configure `config.colors.tab_bar.background` to match the window background in `config/appearance.lua`
- [ ] Task: Implement: Implement a rotating Nordic color palette for inactive tab text/icons in `events/tab-title.lua`
- [ ] Task: Implement: Set inactive tab backgrounds to transparent/match the window
- [ ] Task: Conductor - User Manual Verification 'Phase 3: Tab Bar Background & Inactive Tabs' (Protocol in workflow.md)

## Phase 4: Active Tab Styling (Inverted Nordic)
- [ ] Task: Write Tests: Verify active tab styling logic
- [ ] Task: Implement: Update `events/tab-title.lua` to apply the inverted Nordic style to the active tab (Solid Nordic BG, Dark Text)
- [ ] Task: Implement: Ensure the active tab uses CodeNewRoman Nerd Font
- [ ] Task: Conductor - User Manual Verification 'Phase 4: Active Tab Styling (Inverted Nordic)' (Protocol in workflow.md)

## Phase 5: Final Harmony & Polish
- [ ] Task: Implement: Audit and remove any remaining borders or separators in the tab bar
- [ ] Task: Verify: Ensure visual consistency across all Nordic colors and font weights
- [ ] Task: Conductor - User Manual Verification 'Phase 5: Final Harmony & Polish' (Protocol in workflow.md)
