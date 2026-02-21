---
name: ensure-design-baseline
description: Checks repository UI patterns and ensures docs/design-baseline.md exists and stays aligned with current system design
compatibility: opencode
---

## Goal
Maintain a single, usable design baseline at `docs/design-baseline.md` for all frontend work.

## When to Use
- Before major UI implementation or interface design work
- When baseline is missing, stale, or inconsistent with current repository patterns
- When team direction changes require baseline updates

## Inputs
- Repository UI context
- Existing design conventions (tokens/components/patterns)
- User preferences and anti-goals (if available)

## Process
1. Check whether `docs/design-baseline.md` exists.
2. Scan repository UI patterns (tokens, shared components, spacing/type/color usage).
3. If baseline is missing, run a short visual interview and create `docs/design-baseline.md`.
4. If baseline exists but misses critical sections, run a short visual interview and update only missing/stale sections.
5. Keep one-file baseline only (`docs/design-baseline.md`) and avoid parallel baseline files.
6. Save updates with clear sections for visual system, components, interaction, accessibility, constraints, and anti-goals.

## Output
- Created or updated `docs/design-baseline.md`
- Short note of what was inferred vs confirmed

## Rules
- `docs/design-baseline.md` is the single source of truth
- Prefer incremental edits over full rewrites
- Reuse existing repository patterns before introducing new baseline rules
- If user is unsure, pick conservative defaults and mark them as assumptions

## Visual Interview Protocol
- Ask 2-4 high-impact visual questions per round
- Use concrete options (A/B/C directions), not abstract prompts
- Cover density, hierarchy, motion, component familiarity, tone, and accessibility expectations
