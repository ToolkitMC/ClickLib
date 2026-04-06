# Contributing to ClickLib

## Reporting Issues

- Check existing issues before opening a new one.
- Include your Minecraft version, any other loaded datapacks, and exact reproduction steps.

## Pull Requests

- Keep each PR focused on a single change (fix, feature, or refactor — not mixed).
- Target the `dev` branch if one exists, not `main`.
- If your change affects the public API, update `Example/` and `README.md` accordingly.

## Namespace Rules

- Core library code lives exclusively under the `clicklib:` namespace.
- The `example:` namespace belongs only to the `Example/` pack.
- Functions under `internal/` are not part of the public API — do not call them directly.

## API Stability

- Existing tag names (`#clicklib:right_click`, etc.) must not be renamed or removed.
- New hook tags must be defined with an empty `values` JSON file under `data/clicklib/tags/function/`.
- New public functions must be documented in `README.md`.

## Code Style

- Every `.mcfunction` file must start with a comment describing what it does.
- Never use `@p` — use `@s`, filtered `@a[...]`, or UUID-based selectors.
- Target: Minecraft Java Edition 1.21.6 (pack_format 88).
