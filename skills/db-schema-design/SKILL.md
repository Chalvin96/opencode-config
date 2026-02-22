---
name: db-schema-design
description: Designs database schemas with migrations, indexes, and constraints
compatibility: opencode
---

# DB Schema Design

## Overview

Use this skill to design schema changes that are safe to migrate, easy to review, and aligned with repository conventions.

## Anti-Patterns

- Schema changes without rollback strategy
- Implicit relational behavior with missing constraints
- Indexes added without query rationale
- Large-risk migrations hidden in one opaque step

## Checklist

You MUST complete this sequence:

1. Review current schema and migration history
2. Define entity and relationship updates
3. Specify keys, constraints, defaults, and nullability
4. Plan indexes around expected access patterns
5. Draft migration and rollback approach
6. Call out compatibility and rollout risk

## Process

- Follow repository naming/key conventions.
- Keep referential behavior explicit.
- Stage risky data transformations safely.
- Explain index decisions by query behavior.
- Highlight operational risks for large/hot tables.

## Output Format

Return exactly this structure:

- `Schema Changes`
- `Migration Plan`
- `Rollback Plan`
- `Index Plan`
- `Compatibility and Risk Notes`

## Key Principles

- Migration safety over elegance
- Explicit constraints over implicit assumptions
- Query-aware indexing over blanket indexing
