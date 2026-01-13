# Specification: Comprehensive Tech Stack Inventory & Personal Stack

## 1. Overview
The goal of this track is to account for the user's entire terminal tech stack by establishing two distinct documentation sources. We will ingest the user's existing personal tech stack data to create a comprehensive personal inventory while simultaneously refining the project's core documentation.

## 2. Scope
*   **Ingest Source Data:** Read and analyze the user's existing personal tech stack file (path/content to be provided).
*   **Create Personal Stack:** Create a new file, `conductor/personal-tech-stack.md`, to serve as the exhaustive "central place for everything," listing all tools, CLI utilities, SDKs, and configurations specific to the user's wider workflow.
*   **Refine Project Stack:** Update `conductor/tech-stack.md` to accurately reflect the *core* environment necessary for this specific WezTerm/Tmux project, ensuring it remains focused while the personal file handles the breadth.

## 3. Action Items
1.  **Locate & Read:** Identify and read the user's existing tech stack file.
2.  **Categorize:** Organize the inventory into logical groups:
    *   Core Applications
    *   CLI Utilities
    *   SDKs & Runtimes
    *   Package Managers
    *   AI & Dev Tools
    *   Shell Environment
3.  **Generate `conductor/personal-tech-stack.md`:** Populate this file with the complete, categorized inventory.
4.  **Update `conductor/tech-stack.md`:** Verify and update the main project stack to ensure it aligns with the core project requirements.

## 4. Acceptance Criteria
*   `conductor/personal-tech-stack.md` is created and contains the comprehensive inventory from the user's source.
*   `conductor/tech-stack.md` is updated and accurate for the project scope.
*   The distinction between the "Project Stack" and "Personal Stack" is clear.
