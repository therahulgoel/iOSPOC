# AGENTS.md — Guidelines & Conventions for AI Agents

This document defines rules, coding conventions, token optimization strategies, and workflow restrictions for AI coding assistants working in the `iOSPOC` repository.

---

## ⛔ 1. Git & Version Control Restrictions (CRITICAL)

> [!CAUTION]
> **DO NOT COMMIT OR PUSH ANY CODE.**
>
> Under no circumstances should any AI agent run `git commit`, `git push`, `git merge`, `git rebase`, or `git tag` commands on this repository **until the user explicitly says "add this rule as well"**. All code modifications must remain uncommitted in the local workspace.

---

## ⚡ 2. Token Optimization & Context Conservation Rules

To keep agent operations fast, cost-effective, and within model token limits, adhere to the following guidelines:

### 2.1 Targeted File Viewing
* Never view entire large files if only a specific class, function, or line range is needed.
* Always specify `StartLine` and `EndLine` parameters when calling `view_file`.
* If file content is truncated, fetch only the remaining missing window using `ContentOffset` or line ranges.

### 2.2 Precise Search Operations
* Do not run broad regex queries over the entire repository unless strictly necessary.
* Always restrict `grep_search` using specific `SearchPath` parameters (e.g., `iOSPOC/Algorithms/Array` instead of searching the repository root).
* Use `Includes` glob filters when searching for specific file extensions (`*.swift`, `*.h`, `*.m`).

### 2.3 Surgical Code Editing
* Use `replace_file_content` for single contiguous edits and `multi_replace_file_content` for non-contiguous edits.
* Do **NOT** use `write_to_file` with `Overwrite: true` on large existing files unless creating a brand-new file or replacing a small file entirely.

### 2.4 Concise Communication
* Keep natural language explanations brief, precise, and structured.
* Do not re-summarize file contents or plan details unnecessarily.
* Always use clickable file links using standard markdown format: `[filename](file:///absolute/path/to/file#L10-L20)`.

---

## 📱 3. Codebase Structure & Conventions

### 3.1 Swift Coding Standards
* **Naming**: Use `PascalCase` for types, protocols, enums, and structs. Use `camelCase` for properties, variables, and methods.
* **Access Control**: Mark classes `final` by default unless explicitly designed for inheritance.
* **Extensions**: Group delegate, data source, and protocol conformances in separate `extension` blocks at the bottom of the file or in dedicated extension files.
* **Modern Swift**: Prefer strong typing, `guard` statements, and standard Swift error handling over unsafe force-unwrapping (`!`).

### 3.2 Directory Organization & Placement
* **Algorithms**: Place new algorithms in their respective subfolder under `iOSPOC/Algorithms/<Category>/` (e.g. `Array`, `LinkedList`, `Dynamic`).
* **UI Code**: Maintain MVC / MVVM architecture inside `iOSPOC/Home/` (`C/` for Controllers, `M/` for Models/ViewModels, `V/` for Views/Cells).
* **Isolation**: Do **not** put scratch algorithm code or loose test routines directly inside ViewController files.

### 3.3 Objective-C Interoperability
* Place Objective-C `.h` and `.m` files inside `iOSPOC/ObjectiveC/`.
* Expose Objective-C headers to Swift by registering `#import` directives in [iOSPOC-Bridging-Header.h](file:///Users/rahulgoel/iOSPOC/iOSPOC/ObjectiveC/iOSPOC-Bridging-Header.h).

---

## 🧪 4. Testing Expectations

* When implementing or modifying an algorithm or utility:
  1. Ensure matching unit test coverage exists or is added under `iOSPOCTests/`.
  2. Verify algorithms with edge cases (empty arrays, boundary values, negative numbers).
  3. Never mask or suppress test assertions.
