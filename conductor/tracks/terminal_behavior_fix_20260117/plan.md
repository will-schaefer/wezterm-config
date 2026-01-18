# Implementation Plan - Fix Terminal Behavior & Finalize Migration

## Phase 1: Shell & Tmux Logic Repair
Modify the Zsh configuration to ensure correct session handling and directory defaults.

- [x] Task: Update `.zshrc` Tmux Launch Logic f090b3c
    - [ ] Modify the auto-launch snippet to execute `cd ~` before starting Tmux.
    - [ ] Change the logic from "attach to existing" to "create new session".
    - [ ] Ensure unique session naming (e.g., using a timestamp or counter) to prevent conflicts.
- [ ] Task: Conductor - User Manual Verification 'Shell & Tmux Logic Repair' (Protocol in workflow.md)

## Phase 2: WezTerm Cleanup
Remove legacy configuration files to clean up the repository.

- [ ] Task: Remove WezTerm Configuration Files
    - [ ] Delete `wezterm.lua`.
    - [ ] Delete `config/` directory.
    - [ ] Delete `events/` directory.
    - [ ] Delete `backdrops/` directory.
    - [ ] Delete `inspo/` directory.
    - [ ] Delete `archive/` directory.
    - [ ] Delete `colors/` directory (except non-wezterm specific ones if any).
    - [ ] Delete `utils/` directory.
- [ ] Task: Conductor - User Manual Verification 'WezTerm Cleanup' (Protocol in workflow.md)

## Phase 3: Final System Verification
Ensure the environment is stable and clean.

- [ ] Task: Verify Clean Boot
    - [ ] Restart the terminal and verify no errors occur.
    - [ ] Confirm file structure is clean using `ls -R`.
- [ ] Task: Conductor - User Manual Verification 'Final System Verification' (Protocol in workflow.md)
