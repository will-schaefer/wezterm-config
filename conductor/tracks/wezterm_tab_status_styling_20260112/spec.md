# Specification: WezTerm Tab Bar & Status Styling

## 1. Overview
The goal of this track is to refine the visual appearance of the WezTerm tab bar and the right-status (clock/date) area. The design will focus on a "seamless" look where the tab bar background blends into the window background, while maintaining clear visual distinction for the active tab through an inverted Nordic color style.

## 2. Functional Requirements
### 2.1 Tab Bar Background
- The background color of the tab bar strip and the "empty space" must match the main WezTerm window background color to create a unified, borderless look.
- This applies to both the tab bar itself and the right-status area (clock).

### 2.2 Active Tab Styling
- **Style:** Inverted Nordic.
- **Background:** A bright color from the Nordic palette (e.g., `81A1C1` Blue or `88C0D0` Cyan).
- **Text Color:** Matches the window's main background color for high contrast.
- **Font:** CodeNewRoman Nerd Font.

### 2.3 Inactive Tab Styling
- **Background:** Transparent (matches the window/tab-bar background).
- **Text/Icon Color:** Each inactive tab should feature a different color from a rotating Nordic palette (e.g., Blue, Purple, Cyan, Green).
- **Visual Goal:** Subtly "blend in" while still being identifiable.

### 2.4 Right Status (Battery)
- **Background:** Matches the window/tab-bar background.
- **Text Color:** Bright White.
- **Font:** CodeNewRoman Nerd Font.
- **Content:** Display battery information ONLY (remove clock/date).

## 3. Non-Functional Requirements
- **Consistency:** The colors must strictly adhere to the established "Northern Lights" (Nordic) palette used in the project.
- **Legibility:** Despite the "blending" effect, all text and icons must remain clearly legible.

## 4. Acceptance Criteria
- The tab bar background color is indistinguishable from the main window background.
- The active tab stands out clearly with its solid background and inverted text.
- Inactive tabs appear as colored text/icons on the transparent bar, with colors rotating across tabs.
- The clock in the top right uses the CodeNewRoman Nerd Font in bright white.
- No jarring borders or distinct color blocks are visible in the tab bar background area.

## 5. Out of Scope
- Modifying Tmux status bars or Neovim tablines.
- Changing the layout or logic of how tabs are created or managed.
