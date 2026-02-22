---
name: frontend-philosophy
description: Concise frontend manifesto for baseline-consistent, intentional, accessible, and performant user interfaces
compatibility: opencode
---

# Frontend Philosophy

## Overview

Use this skill to keep UI work intentional and baseline-aligned while still making pragmatic design choices for real users.

## Anti-Patterns

- One-off styles that break system consistency
- Missing loading/empty/error/success states
- Accessibility as an afterthought
- Motion used as decoration instead of communication

## Checklist

You MUST complete this sequence:

1. Read baseline and current UI patterns
2. Clarify primary user action and anti-goals
3. Ensure complete state coverage
4. Validate accessibility and responsiveness
5. Review performance and interaction clarity

## Process

- Start from `docs/design-baseline.md`.
- Reuse shared components/tokens first.
- Make hierarchy and recovery paths obvious.
- Keep motion purposeful and minimal.
- Validate keyboard flow on mobile and desktop.

## Output Format

Return guidance with exactly these headings:

- `Recommended Direction`
- `Baseline Alignment`
- `State Coverage`
- `Accessibility and Responsiveness`
- `Performance and Motion`
- `Risks and Follow-Ups`

## Key Principles

- Baseline first, novelty second
- UX clarity over visual noise
- Consistency over local optimization
