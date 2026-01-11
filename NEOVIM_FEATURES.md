# Neovim Customization Roadmap

This file maps out the key features and areas of Neovim that can be customized to create your perfect "Northern Lights" IDE.

## 1. UI & Aesthetics (The "Vibe")
- [x] **Theme**: Core colorscheme (`nordic.nvim` / `catppuccin`).
- [x] **Transparency**: Matching the terminal background opacity.
- [x] **Dashboard**: The startup screen (Wolf ASCII art, recent files).
- [x] **Status Line (Lualine)**: The bottom bar showing mode, git, and file info.
- [ ] **Tab Bar (Bufferline)**: The top bar showing open files/tabs.
- [ ] **Indent Guides**: Vertical lines showing indentation levels.
- [ ] **Notifications (`noice.nvim`)**: Slick pop-up notifications instead of text messages.
- [ ] **Cursor**: Customizing the cursor shape/color in different modes.
- [ ] **Window Borders**: Adding borders to floating windows (hover docs, diagnostics).

## 2. Navigation & Workflow
- [ ] **File Explorer (`neo-tree`)**: The side panel file tree.
    - *Goal:* Make it transparent and minimalistic.
- [ ] **Fuzzy Finder (`Telescope`)**: Searching files (`<space> f f`) and text.
    - *Goal:* Customize the preview window and layout.
- [ ] **Tmux Navigation**: Seamlessly moving between Vim splits and Tmux panes (`Ctrl+h/j/k/l`).
- [ ] **Session Management**: Auto-saving/restoring open windows when you restart.
- [ ] **Which-Key**: The popup helper that shows keybindings.

## 3. Coding & Intelligence (LSP)
- [ ] **Language Support**: Installing servers for Python, JS, Lua, etc. (`Mason`).
- [ ] **Completion (`cmp` / `blink`)**: The popup menu while typing.
    - *Goal:* Add icons (Text, Function, Snippet) and change colors.
- [ ] **Diagnostics**: Error messages (red squiggles).
    - *Goal:* Change icons or have them appear as virtual text.
- [ ] **Formatting**: Auto-formatting on save (Prettier, Black, Stylua).
- [ ] **AI Integration**: Copilot, Codeium, or local LLMs inside the editor.

## 4. Git Integration
- [x] **Status Line Info**: Showing branch and diffs.
- [ ] **Gutter Signs (`gitsigns`)**: Markers in the left margin for added/changed lines.
- [ ] **Git UI (`LazyGit`)**: Full graphical git client inside Neovim.
- [ ] **Diff View**: Side-by-side comparison of changes.

## 5. Your Custom Features
- [ ] **Dashboard To-Do List**: Hooking up the "Project Actions" section to a real script.
- [ ] **Project Markers**: Defining how "Action Markers" work in your files.
