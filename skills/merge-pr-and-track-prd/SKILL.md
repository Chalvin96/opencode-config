---
name: merge-pr-and-track-prd
description: Squash-merges a pull request after checks pass, writes a change-aware commit message, then updates the linked PRD implementation tracker
compatibility: opencode
---

# Merge PR and Track PRD

## Overview

Use this skill to complete the merge safely and keep PRD delivery tracking in sync.

## Anti-Patterns

- Merging while checks are pending/failing
- Tracker updates without verified PRD slice mapping
- Broad edits to PRD content during tracker update
- Generic squash messages that hide intent

## Checklist

You MUST complete this sequence:

1. Read PR state, checks, approvals, and mergeability
2. Verify policy gates are satisfied
3. Draft change-aware squash commit message
4. Squash-merge PR
5. Update linked PRD slice to `Merged`
6. Post short tracker-update note

## Process

- Stop immediately and report blockers if merge gates fail.
- Keep tracker edits scoped to one matching slice row.
- Include PR reference and merge date in tracker update.
- Preserve requirement content; update delivery status only.

## Output Format

Return exactly this structure:

- `Merge Result`
- `Squash Commit Message`
- `Tracker Update`
- `Follow-Up Actions`

## Key Principles

- Policy gates are non-negotiable
- Merge state and planning state must match
- Minimal, auditable tracker edits
