---
name: write-to-obsidian
description: Writes structured notes to an Obsidian vault using consistent metadata and organization
compatibility: opencode
---

# Write to Obsidian

## Overview

Use this skill to store decisions and findings in a consistent, searchable note format.

## Anti-Patterns

- Ad-hoc note layout with inconsistent metadata
- Overwriting existing notes silently
- Losing source meaning while rewriting
- Saving to ambiguous locations

## Checklist

You MUST complete this sequence:

1. Confirm note intent and note type
2. Resolve destination folder and filename
3. Normalize metadata and structure
4. Write note to vault path
5. Confirm saved path and summary

## Process

- Default vault path: `/mnt/Obsidian/plan` unless overridden.
- Use filename format `YYYY-MM-DD-<slug>.md`.
- Keep metadata light, consistent, and lowercase-hyphenated where relevant.
- Preserve factual statements from source inputs unless rewrite is requested.

## Output Format

Return exactly this structure:

- `Note Path`
- `Note Type`
- `Metadata`
- `Content Summary`

## Key Principles

- Durable notes over ephemeral summaries
- Consistency over personal style drift
- Fidelity to source intent
