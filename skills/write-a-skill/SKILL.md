---
name: write-a-skill
description: Interviews the user and scaffolds a new SKILL.md using a reusable template
compatibility: opencode
---

## Goal
Create a new, well-structured SKILL.md that is clear, reusable, and ready to run.

## When to Use
- Encoding a recurring workflow as a reusable skill
- Capturing operational know-how that should be repeatable

## Inputs
- Skill idea and intended behavior

## Prerequisites
- `skills/` directory exists

## Process
1. Ask what the skill does in one sentence
2. Ask when it should trigger
3. Ask what inputs it requires
4. Ask what prerequisites must hold
5. Ask for step-by-step workflow
6. Ask what outputs it should produce
7. Ask for rules/anti-patterns
8. Ask for at least one concrete example
9. Generate lowercase-hyphenated skill name
10. Write `skills/<name>/SKILL.md` using the project template

## Output
`skills/<skill-name>/SKILL.md` with sections:
- Goal
- When to Use
- Inputs
- Prerequisites
- Process
- Output
- Rules
- Error Handling
- Examples

## Rules
- Skill name: lowercase-hyphenated, concise, unique
- Description must be specific enough for reliable triggering
- Process steps must be actionable
- Include at least one example

## Examples
Request: "Create a skill for writing release notes"
Result: interview + scaffolded `skills/write-release-notes/SKILL.md`
