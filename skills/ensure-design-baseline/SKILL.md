---
name: ensure-design-baseline
description: Checks repository UI patterns and ensures docs/design-baseline.md exists and stays aligned with current system design
compatibility: opencode
---

# Ensure Design Baseline

## Overview

Use this skill to keep `docs/design-baseline.md` current and aligned with real repository UI behavior.

## Anti-Patterns

- Letting baseline drift from shipped UI
- Rewriting everything when only a few sections are stale
- Maintaining multiple baseline sources
- Hiding inferred assumptions as confirmed facts

## Checklist

You MUST complete this sequence:

1. Check whether baseline exists
2. Compare baseline against current UI patterns
3. Update only stale or missing sections
4. Mark confirmed vs inferred guidance
5. Report changes and open decisions

## Process

- Scan tokens, components, spacing, type, and state handling.
- Prefer incremental updates over full rewrites.
- Keep baseline in a single canonical file.
- Use short visual clarification rounds if needed.

## Output Format

Return exactly this structure:

- `Baseline Status` (created/updated/no-change)
- `Sections Added or Updated`
- `Confirmed vs Inferred`
- `Open Decisions`

## Key Principles

- Repository reality over stale documentation
- One baseline source of truth
- Practical guidance over theoretical completeness
