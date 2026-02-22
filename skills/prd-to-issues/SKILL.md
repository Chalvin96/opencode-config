---
name: prd-to-issues
description: Breaks a PRD into independently workable vertical-slice task issues
compatibility: opencode
---

# PRD to Issues

## Overview

Use this skill to turn a PRD into dependency-aware vertical slices that can be implemented independently.

<HARD-GATE>
Do not create any issue until the full slice breakdown is presented and explicitly approved by the user.
</HARD-GATE>

## Anti-Patterns

- Creating issues before user approves the breakdown
- Horizontal (layer-only) issue cuts with no user-visible value
- Missing blocker links and journey references
- Vague implementation details that require follow-up clarification

## Checklist

You MUST complete this sequence:

1. Read PRD issue, comments, and implementation tracker
2. Propose vertical slices with journey mapping and blockers
3. Present complete breakdown and get explicit approval
4. Create issues in dependency order
5. Publish a post-creation summary table

## Process

- Keep one primary user-visible behavior per issue where practical.
- Include concrete implementation details and exact targets.
- Include testing decisions and individually verifiable done criteria.
- Link each issue to PRD slice ID/name and at least one user journey.
- Invoke `db-schema-design` for schema/model/migration-heavy slices.

## Output Format

Each issue body must contain exactly these sections:

- `Objective`
- `User Journey Reference`
- `Implementation Details`
- `Testing Decisions`
- `Done When`
- `Blocked-By / Blocks`

After creation, return a table with columns:

- `Issue`
- `Title`
- `Blockers`

## Key Principles

- Approval before creation
- Vertical value over horizontal decomposition
- Enough detail to implement without guessing
