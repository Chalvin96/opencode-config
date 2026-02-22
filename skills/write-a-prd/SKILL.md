---
name: write-a-prd
description: Converts planner interview output into a structured PRD in the project tracker
compatibility: opencode
---

# Write a PRD

## Overview

Use this skill after Planner discovery to turn approved interview output into a clear PRD. Reuse discovery first; ask only targeted follow-ups.

<HARD-GATE>
Do not restart broad discovery if approved planner interview output exists. Start from it.
</HARD-GATE>

## Anti-Patterns

- Re-running full intake after Planner already approved direction
- Writing implementation-level code detail in PRD
- Omitting decision tradeoffs and revisit triggers
- Renaming referenced slice IDs

## Checklist

You MUST complete this sequence:

1. Read approved planner interview output
2. Map findings into PRD sections
3. Resolve missing constraints with targeted questions
4. Record decision considerations and tradeoffs
5. Publish or update PRD issue with stable slices

## Process

- Keep PRD implementation-aware but code-agnostic.
- Keep user journeys and scope boundaries explicit.
- Capture dependencies and operational readiness.
- Keep Implementation Tracker slice IDs stable once referenced.
- Defer issue decomposition to `prd-to-issues`.

## Output Format

PRD must include exactly these sections:

- `Problem Statement`
- `Proposed Solution`
- `User Journeys`
- `Scope` (In Scope / Out of Scope)
- `Technical Constraints`
- `Decision Considerations`
- `Dependencies`
- `External Preparation and Operations`
- `Open Questions`
- `Notes`
- `Implementation Tracker`

## Key Principles

- Approved discovery is the source of truth
- Decision clarity over document length
- PRD should be easy to slice into issues
