---
name: design-an-interface
description: Generates 3+ competing designs for a user-facing or system-facing interface, then helps pick one
compatibility: opencode
---

# Design an Interface

## Overview

Use this skill to generate multiple credible interface options, compare tradeoffs, and recommend one direction.

## Anti-Patterns

- Presenting one solution as if alternatives were considered
- Options that are only cosmetic variants
- Ignoring baseline patterns and constraints
- Recommendation without explicit tradeoff reasoning

## Checklist

You MUST complete this sequence:

1. Understand intent, constraints, and anti-goals
2. Review baseline and existing patterns
3. Generate at least 3 materially different options
4. Compare options with clear tradeoffs
5. Recommend one direction with rationale

## Process

- Use `docs/design-baseline.md` as the baseline source.
- Include interaction contract and usage example per option.
- Compare complexity, extensibility, cost, and failure modes.
- Keep error/empty/loading behavior explicit.
- Label assumptions and unresolved decisions.

## Output Format

Return exactly this structure:

- `Option A`
- `Option B`
- `Option C` (or more)
- `Comparison Matrix`
- `Recommendation`
- `Assumptions and Open Questions`

## Key Principles

- Explore before converging
- Reuse proven patterns by default
- Optimize for user outcomes, not novelty
