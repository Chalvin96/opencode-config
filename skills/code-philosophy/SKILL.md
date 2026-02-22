---
name: code-philosophy
description: Concise backend and internal-logic manifesto for readable, fail-fast, maintainable code
compatibility: opencode
---

# Code Philosophy

## Overview

Use this skill when backend or internal logic decisions are getting noisy. The goal is simple: readable control flow, explicit boundaries, and predictable behavior.

## Anti-Patterns

- Deeply nested logic that hides the happy path
- Validation scattered across unrelated layers
- Abstractions introduced before repetition is stable
- Comments explaining what code does instead of why

## Checklist

You MUST complete this sequence:

1. Clarify intended behavior, constraints, and non-goals
2. Define boundaries, invariants, and invalid states
3. Shape control flow so success path is obvious
4. Choose abstraction level based on proven repetition
5. Verify naming, logging, and testability

## Process

- Validate and normalize input at boundaries.
- Fail fast on invalid states with actionable error messages.
- Keep side effects visible and local.
- Prefer composition and focused helpers.
- Keep logs contextual (`[Service.method] ...`).

## Output Format

Return guidance with exactly these headings:

- `Approach`
- `Boundaries and Invariants`
- `Control Flow`
- `Abstraction Decisions`
- `Observability and Testing`
- `Risks and Follow-Ups`

## Key Principles

- Clarity over cleverness
- Determinism over hidden magic
- Small explicit steps over speculative architecture
