---
name: git-guardrails
description: Enforces safe git practices and blocks destructive operations
compatibility: opencode
---

# Git Guardrails

## Overview

Use this skill to prevent accidental data loss and unsafe history changes.

<HARD-GATE>
Never run destructive or history-rewriting commands without explicit user confirmation.
</HARD-GATE>

## Anti-Patterns

- Running `push --force` by habit
- Using `reset --hard` before safer alternatives
- Deleting branches without checking merge state
- Direct pushes to long-lived protected branches

## Checklist

You MUST complete this sequence before risky git commands:

1. Classify command risk (safe vs destructive/history rewrite)
2. Prefer safer reversible alternative where possible
3. Explain risk and request explicit confirmation
4. Execute only after confirmation

## Process

- Safe commands (`status`, `diff`, `log`, `add`, `commit`) run normally.
- Risky commands pause for explicit confirmation.
- Prefer feature branches for day-to-day work.
- Offer mitigation options (`stash`, backup branch, `revert`).

## Output Format

For blocked commands, return exactly:

- `Blocked Command`
- `Why Risky`
- `Safer Alternatives`
- `Required Confirmation`

## Key Principles

- Safety before speed
- Reversible before irreversible
- Explicit consent for destructive actions
