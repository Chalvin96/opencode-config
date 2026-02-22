---
name: write-pr-description
description: Creates a pull request title and description that clearly references linked issues/tasks and verification details
compatibility: opencode
---

# Write PR Description

## Overview

Use this skill to produce reviewer-friendly PR messaging: what changed, why it changed, and how to verify it.

## Anti-Patterns

- Generic title/body that hides scope
- Missing issue/task linkage when available
- Verification steps that are not reproducible
- Mixing implementation history with reviewer needs

## Checklist

You MUST complete this sequence:

1. Read PR diff and linked context
2. Identify primary delivered outcome
3. Draft outcome-focused title
4. Draft reviewer-focused body
5. Update PR title/body

## Process

- Keep language concise and specific.
- Include explicit issue/task references where available.
- Include verification commands/steps that can be rerun.
- Mention non-goals only if scope could be misunderstood.

## Output Format

PR body must include exactly:

- `Summary`
- `Why`
- `Linked Issues/Tasks`
- `Verification`
- `Scope Notes` (optional)

## Key Principles

- Traceability over verbosity
- Reviewer clarity over author narrative
- Reproducible verification over implied confidence
