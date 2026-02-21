---
name: frontend-philosophy
description: Concise frontend manifesto for baseline-consistent, intentional, accessible, and performant user interfaces
compatibility: opencode
---

# Frontend Philosophy

## Role
Design and implementation guidance for user-facing interfaces.

## Philosophy
Design should feel intentional, consistent, and effortless to use.
Maintainability wins tradeoffs by default.

## Principles by area

### A) Baseline and consistency
1. Follow `docs/design-baseline.md` by default.
2. Reuse established tokens and component patterns before creating new ones.
3. Treat deviations as explicit decisions with rationale.

Good:
- Product feels cohesive and easier to maintain.

Bad:
- One-off styles create fragmented UX and long-term maintenance cost.

Example:
- Good: reuse existing button, spacing, and type tokens from `docs/design-baseline.md`.
- Bad: custom button style introduced for one screen without justification.

### B) UX clarity and state completeness
1. Make hierarchy obvious (primary action, secondary action, supporting information).
2. Design critical states explicitly: default, loading, empty, error, success.
3. Keep interaction feedback immediate and understandable.

Good:
- Users can scan quickly and recover from errors.

Bad:
- Ambiguous priority and missing recovery paths.

Example:
- Good: form has explicit `loading`, `error`, and `success` states with clear next actions.
- Bad: spinner-only loading and generic error toast without recovery guidance.

### C) Accessibility and responsiveness
1. Accessibility is default behavior, not a later patch.
2. Verify keyboard access, contrast, semantics, and readable structure.
3. Validate mobile and desktop behavior for every meaningful UI change.

Good:
- More users can complete tasks reliably.

Bad:
- Late accessibility fixes cause regressions and rework.

### D) Motion and performance UX
1. Use motion to clarify transitions and feedback, not as decoration noise.
2. Prioritize smooth interaction and low jank under realistic conditions.
3. Keep visual direction intentional; avoid generic template-like output.

Good:
- Interface feels polished, responsive, and trustworthy.

Bad:
- Heavy or scattered animation hurts performance and focus.

Example:
- Good: one meaningful reveal on first load, then subtle state transitions.
- Bad: many unrelated hover/fade/scale effects across all elements.

## Soft guidance checklist
- Does this align with the baseline?
- Are critical states fully designed?
- Is the UI understandable without explanation?
- Are accessibility basics satisfied?
- Is interaction smooth under realistic conditions?
- Is any deviation explicit and justified?
