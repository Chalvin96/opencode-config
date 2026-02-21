---
name: design-an-interface
description: Generates 3+ competing designs for a user-facing or system-facing interface, then helps pick one
compatibility: opencode
---

## Goal
Explore multiple distinct interface designs while staying consistent with the project's existing design language and constraints.

## When to Use
- Designing a new user-facing component or workflow
- When API shape, extensibility, or ergonomics are unclear

## Inputs
- Problem description and desired outcomes
- Primary callers/users and key operations
- Constraints (performance, compatibility, accessibility, security)
- Visual references (optional): screenshots, links, components users like/dislike

## Prerequisites
- Core use cases are identified
- Success criteria are clear enough to compare options

## Process
1. Use `docs/design-baseline.md` as the single source of truth for design baseline.
2. Capture anti-goals (what to avoid), prioritizing user-stated anti-goals first and inferred anti-goals second.
3. Clarify requirements, callers, operations, and constraints for the interface task.
4. Define non-negotiable guardrails from `docs/design-baseline.md`.
5. Generate at least 3 distinct designs that all respect the guardrails and anti-goals:
   - Minimal surface area
   - Maximum flexibility
   - Optimized for common path
6. For each design, provide:
   - Interface signature or interaction contract
   - Example usage flow
   - Complexity and maintenance cost
   - Trade-offs and failure modes
   - Baseline alignment notes (reused/adapted/new)
   - Anti-goal adherence notes
7. Compare designs on simplicity, extensibility, implementation cost, testability, baseline alignment, and anti-goal adherence, then recommend one approach.

## Visual Interview Protocol
- Use visual-first questions with concrete options, not abstract prompts.
- Ask 2-4 high-impact questions per round across: density, hierarchy emphasis, motion, component familiarity, and tone.
- Present options as A/B/C directions with brief descriptors and references from existing project UI when possible.
- If user is unsure, choose conservative baseline-aligned defaults and mark them as assumptions.

## Output
- 3+ design alternatives
- Recommendation with rationale
- Baseline alignment summary with any justified deviations
- Anti-goals list and adherence assessment

## Rules
- Generate all alternatives before narrowing
- Every design must include a concrete usage example
- Designs must be materially different, not cosmetic variations
- Reuse existing patterns and tokens by default; deviations must be explicit and justified
- `docs/design-baseline.md` is the only baseline file used by this skill
- Anti-goals are mandatory for recommendation quality; if none are provided, infer and label them as assumptions
