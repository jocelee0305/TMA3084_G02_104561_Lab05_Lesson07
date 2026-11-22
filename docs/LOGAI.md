# AI Usage Log

## LOGAI-001

| Item | Details |
|---|---|
| Date | 22/11/2026 |
| Tool | Codex |
| Prompt | Refactor the BottomNavigationBar app in `lib/main.dart`. Move the selected tab index out of the widget state into a Provider `ChangeNotifier` named `TabModel`. Read the index with `context.watch` and update it with `context.read` inside `onTap`. Keep the UI and the four tab labels exactly the same. Add no package other than `provider`. Return the result as a diff. |
| AI output | Refactored tab selection to use a Provider `TabModel`, replacing widget state and `setState` with `context.watch` and `context.read`. |
| My changes | Made the index private with a read-only getter and changed the fixed screen list to `static const`. |
| Verification | `main.dart` passed; `flutter analyze` found no issues. |
| Decision | Accepted after edits. |
