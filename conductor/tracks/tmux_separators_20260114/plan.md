# Plan: Refine Tmux Pane Separators and Active Highlight

This plan implements clearly visible pane separators for inactive panes and a high-contrast highlight for the active pane, adhering to the Nordic/Northern Lights aesthetic.

## Phase 1: Environment Setup and Baseline Verification

- [x] Task: Select Task - Mark 'Baseline Verification' as In-Progress `[x]`
- [x] Task: Verify existing Tmux configuration location and structure (likely `~/.tmux.conf` or `tmux/tmux.conf` in the project)
- [x] Task: Create a baseline test/verification script to check current Tmux border settings `[x]` e18b2fb
- [x] Task: Commit Baseline Verification and Mark as Complete `[x]` e18b2fb
- [x] Task: Conductor - User Manual Verification 'Baseline Verification' (Protocol in workflow.md) `[x]` 64fe42f

## Phase 2: Implementation of Active and Inactive Border Styling

- [ ] Task: Select Task - Mark 'Implement Active/Inactive Border Styling' as In-Progress `[~]`
- [ ] Task: Write failing tests (TDD) - Create a script/check to verify that Tmux border colors match the target spec (Snow White for active, Subtle Grey for inactive)
- [ ] Task: Update Tmux configuration with `pane-border-style` using Subtle Grey (`#4C566A`)
- [ ] Task: Update Tmux configuration with `pane-active-border-style` using Snow White (`#E5E9F0`)
- [ ] Task: Implement to pass tests - Reload Tmux configuration and verify the check script passes
- [ ] Task: Commit Border Styling and Mark as Complete `[x]`
- [ ] Task: Conductor - User Manual Verification 'Implementation of Border Styling' (Protocol in workflow.md)

## Phase 3: Final Polish and Integration Check

- [ ] Task: Select Task - Mark 'Final Polish' as In-Progress `[~]`
- [ ] Task: Verify border visibility across different terminal backgrounds (transparency check)
- [ ] Task: Ensure settings are consistent across session reloads/reattaches
- [ ] Task: Commit Final Polish and Mark as Complete `[x]`
- [ ] Task: Conductor - User Manual Verification 'Final Polish and Integration' (Protocol in workflow.md)
