# Specification: Refine Tmux Pane Separators and Active Highlight

## 1. Overview
This track focuses on improving the visibility and usability of Tmux pane separators within the "Northern Lights" themed environment. Currently, pane borders are invisible, making it difficult to distinguish between splits. The goal is to implement clearly visible separators for inactive panes and a distinct, high-contrast highlight for the active pane to immediately orient the user.

## 2. Functional Requirements
-   **Active Pane Highlight:** The border of the currently active pane must be styled with **Snow White/Bright Grey (`#E5E9F0`)** to provide maximum contrast and immediate visual recognition.
-   **Inactive Pane Separators:** Borders for inactive panes must be styled with a **Subtle Grey (`#4C566A`)** to clearly define boundaries without creating visual clutter or distraction.
-   **Configuration:** These changes must be applied within the existing Tmux configuration files, ensuring compatibility with the current theme structure.

## 3. Non-Functional Requirements
-   **Aesthetics:** The chosen colors must be consistent with the Nordic/Northern Lights color palette defined in `product.md`.
-   **Performance:** The styling changes should not introduce any rendering lag or visual artifacts during pane resizing or switching.

## 4. Acceptance Criteria
-   [ ] When multiple panes are open, the border between them is clearly visible in Subtle Grey (`#4C566A`).
-   [ ] As the user switches focus between panes, the border of the new active pane immediately changes to Snow White (`#E5E9F0`).
-   [ ] The styling persists correctly after detaching and reattaching the Tmux session.

## 5. Out of Scope
-   Changing the character set used for drawing borders (e.g., switching from single lines to double lines) unless necessary for visibility.
-   Modifying WezTerm's own window padding or borders (this is strictly a Tmux configuration change).
