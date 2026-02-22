---
name: write-a-plan
description: Interviews the user and writes an execution plan directly in a GitHub issue workflow
compatibility: opencode
---

# Write an Execution Plan

## Overview

Use this skill to create issue-level plans that are clear to execute and easy to verify.

## Anti-Patterns

- Layer-only sequencing without user-visible progress
- Vague checklist items that cannot be verified
- Missing dependency order
- Testing strategy implied but not written

## Checklist

You MUST complete this sequence:

1. Read issue context and acceptance intent
2. Break work into vertical executable steps
3. Define testing strategy with `testing-philosophy`
4. Add verification checkpoints and blocker ordering
5. Publish plan in the issue thread

## Process

- Keep steps atomic and independently checkable.
- Sequence blockers first.
- Capture assumptions when context is incomplete.
- Keep rollout/handoff notes only when relevant.
- Keep plan updates in one issue thread.

## Output Format

Plan should include these sections:

- `Objective`
    - What user-visible outcome should this issue deliver?

- `Linked Context`
    PRD: <!-- issue link/number -->
    Parent issue (optional): <!-- issue link/number -->

- `User Journey Reference`
    - Journey ID(s): <!-- from PRD User Journeys, e.g. J1, J2 -->
    - Journey title(s):
        - 
    - How this issue advances the journey:
        - 
- `API Contract Delta` (if applicable)
    - Endpoint(s):
        - 
    - Request/response changes:
        - 
    - Auth/permission impact:
        - 
    - Error handling changes:
        - 
- `Scope`
    - In scope:
        - 
    - Out of scope:
        - 

- `Implementation Details`
    - What to change (systems/layers/components):
        - 
    - Target files or artifacts:
        - 
    - Expected behavior change:
        - 
    - Non-trivial constraints:
        - 

- `Data and Migration Plan` (if applicable)
    - Schema/model changes:
        - 
    - Data import/backfill/cleanup tasks:
        - 
    - Idempotency and re-run behavior:
        - 
    - Rollback plan:
        - 

- `Execution Commands`
    - Build/run commands:
        - 
    - Data/setup commands:
        - 
    - Test commands:
        - 

- `Anti-Goals`
    - What should this implementation explicitly avoid?
    - Keep this aligned with `docs/design-baseline.md` when UI is involved.

- `Testing Decisions`
    - Unit test intent (e`dge cases, isolated behaviors):
    - 
    - Integration test intent (user journey/system collaboration):
    - 
    - E2E test intent (critical flow only, if needed):
    - 
    - Follow `testing-phylosophy`

- `Acceptance Criteria`
    - [ ] Criterion 1 (testable)
    - [ ] Criterion 2 (testable)

- `Verification`
    - How to verify behavior locally or in staging:
    - 

- `Dependencies and Blockers`
    - Depends on:
        - 
    - Blocks:
        - 

- `Risks and Observability`
    - Primary implementation risks:
    - 
    - Mitigations:
    - 
    - Logs/metrics/signals to confirm behavior:
    - 

- `Implementation Notes`
    - Constraints or assumptions:
    - 

- `Definition of Done`
    - [ ] Acceptance criteria met
    - [ ] Verification steps completed
    - [ ] PR references this issue/task


- `Key Principles`

    - Clarity over verbosity
    - Verifiable steps over broad milestones
    - Planning is complete when execution needs no guesswork
