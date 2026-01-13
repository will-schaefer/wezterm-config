# Plan: WezTerm Tab Bar & Status Styling

## Phase 1: Tech Stack & Baseline Verification [checkpoint: 8eb07f1]
- [x] Task: Audit current `config/appearance.lua` and `events/right-status.lua` for existing tab/status styling logic [7bc6aaa]
- [x] Task: Research WezTerm `config.colors.tab_bar` and `wezterm.on('format-tab-title', ...)` capabilities [7bc6aaa]
- [x] Task: Conductor - User Manual Verification 'Phase 1: Tech Stack & Baseline Verification' (Protocol in workflow.md)

## Phase 2: Right-Status (Battery Only) Refinement [checkpoint: 43ca2f1]
- [x] Task: Write Tests: Verify `right-status.lua` can return formatted text with specific colors and fonts [3b877ae]
- [x] Task: Implement: Update `events/right-status.lua` to use CodeNewRoman Nerd Font in Bright White [11c7eef]
- [x] Task: Implement: Remove clock/date and ensure battery background matches the window background [d9482ef]
- [x] Task: Conductor - User Manual Verification 'Phase 2: Right-Status (Battery Only) Refinement' (Protocol in workflow.md)

## Phase 3: Tab Bar Background & Inactive Tabs [checkpoint: 2259e34]
- [x] Task: Write Tests: Verify tab bar color configuration logic [05f48b9]
- [x] Task: Implement: Configure `config.colors.tab_bar.background` to match the window background in `config/appearance.lua` [2259e34]
- [x] Task: Implement: Implement a rotating Nordic color palette for inactive tab text/icons in `events/tab-title.lua` [2259e34]
- [x] Task: Implement: Set inactive tab backgrounds to transparent/match the window [2259e34]
- [x] Task: Conductor - User Manual Verification 'Phase 3: Tab Bar Background & Inactive Tabs' (Protocol in workflow.md)

## Phase 4: Active Tab Styling (Inverted Nordic) [checkpoint: 1586153]
- [x] Task: Write Tests: Verify active tab styling logic [59a073b]
- [x] Task: Implement: Update `events/tab-title.lua` to apply the inverted Nordic style to the active tab (Solid Nordic BG, Dark Text) [1586153]
- [x] Task: Implement: Ensure the active tab uses CodeNewRoman Nerd Font [1586153]
- [x] Task: Conductor - User Manual Verification 'Phase 4: Active Tab Styling (Inverted Nordic)' (Protocol in workflow.md)

## Phase 5: Final Harmony & Polish
- [ ] Task: Implement: Audit and remove any remaining borders or separators in the tab bar
- [ ] Task: Verify: Ensure visual consistency across all Nordic colors and font weights
- [ ] Task: Conductor - User Manual Verification 'Phase 5: Final Harmony & Polish' (Protocol in workflow.md)
