---
name: write-a-skill
description: Interviews the user and scaffolds a new SKILL.md using a reusable template
compatibility: opencode
---

# Write a Skill

## Overview

Use this skill to scaffold new skills with clear triggers, flexible process behavior, and strict output contracts.

## Anti-Patterns

- Broad vague descriptions that trigger unreliably
- Process rules with no output contract
- Overly rigid workflows that cannot adapt to context
- Missing example usage

## Checklist

You MUST complete this sequence:

1. Clarify skill outcome and trigger conditions
2. Capture required inputs and assumptions
3. Define workflow steps and decision points
4. Define strict output format
5. Write `skills/<name>/SKILL.md`

## Process

- Use lowercase-hyphenated skill names.
- Keep instructions actionable and concise.
- Keep output format explicit and testable.
- Include one concrete usage example.

## Output Format

Generated `SKILL.md` must include:

- Frontmatter (`name`, `description`, `compatibility`)
- `# Title`
- `## Overview`
- `## Anti-Patterns`
- `## Checklist`
- `## Process`
- `## Output Format`
- `## Key Principles`

## Key Principles

- Trigger clarity over broad coverage
- Flexible execution with explicit outputs
- Reusability over one-off instructions
