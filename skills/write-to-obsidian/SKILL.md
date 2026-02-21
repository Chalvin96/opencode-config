---
name: write-to-obsidian
description: Writes structured notes to an Obsidian vault using consistent metadata and organization
compatibility: opencode
---

## Goal
Capture decisions, findings, and session notes in Obsidian with consistent structure and naming.

## When to Use
- Recording architecture or product decisions
- Capturing meeting/session notes
- Saving research or review findings

## Inputs
- Note title
- Note type (for example: decision, research, review, session, reference)
- Content body
- Vault path (default: `/mnt/Obsidian`)

## Prerequisites
- Obsidian vault path is writable (default: `/mnt/Obsidian`)
- File operations are available in current environment

## Process
1. Use vault path `/mnt/Obsidian` unless explicitly overridden
2. Resolve destination folder from note type
3. Generate filename: `YYYY-MM-DD-<slug>.md`
4. Write frontmatter and content
5. Verify file creation

## Output
Markdown note in the vault with metadata:
- title
- date
- type
- tags

## Rules
- Use ISO date in filename
- Never overwrite existing notes; disambiguate filename if needed
- Keep tags lowercase and hyphenated

## Error Handling
If `/mnt/Obsidian` (or provided override path) is unavailable, report clearly and skip write.

## Examples
"Log decision to use token-based authentication"
- Creates a dated decision note in the configured decisions folder
