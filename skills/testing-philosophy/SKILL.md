---
name: testing-philosophy
description: Practical testing manifesto using a pyramid strategy with strict unit isolation, journey-focused integration tests, and minimal critical e2e coverage
compatibility: opencode
---

# Testing Philosophy

## Overview

Use this skill to design test strategy with a practical pyramid: most confidence from fast unit tests, targeted integration, and minimal critical e2e.

## Anti-Patterns

- E2E-heavy suites for low-risk logic
- Integration tests duplicating unit assertions
- Unit tests with hidden I/O dependencies
- Vague test naming and mixed structure

## Checklist

You MUST complete this sequence:

1. Identify critical behavior and risk hotspots
2. Allocate coverage by test layer
3. Define deterministic unit coverage first
4. Add journey-level integration tests
5. Add minimal business-critical e2e

## Process

- Keep unit tests isolated from network, DB, and filesystem.
- Use integration tests for boundary collaboration.
- Use e2e only for top user-critical flows.
- Remove redundant cross-layer scenarios.
- Prefer setup -> execute -> assert structure.

## Output Format

Return guidance with exactly these headings:

- `Pyramid Strategy`
- `Unit Coverage`
- `Integration Journeys`
- `Critical E2E`
- `Coverage Gaps`
- `Risks and Follow-Ups`

## Key Principles

- Fast feedback beats exhaustive slowness
- Every layer proves something unique
- Confidence quality beats test count
