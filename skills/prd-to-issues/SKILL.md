---
name: prd-to-issues
description: Breaks a PRD into independently workable vertical-slice task issues
compatibility: opencode
---

## Goal
Decompose a PRD into small, independently demoable issues where each issue delivers end-to-end value across relevant layers.

## When to Use
- After a PRD exists
- Before implementation begins
- When building a dependency-aware task queue

## Inputs
- Parent PRD issue number or URL

## Prerequisites
- Access to issue tracker integration
- Parent PRD issue exists
- Project artifacts available for exploration

## Process
1. Fetch the parent PRD issue and comments
2. Explore the project to identify affected layers (for example: data, domain logic, interfaces, verification, operations)
3. Design vertical slices where each slice represents one user-visible outcome
4. Propose breakdown with title, layers touched, blockers, and user stories covered
5. Iterate with the user on granularity and ordering
6. Create task issues in dependency order using `docs/templates/implementation-issue-template.md`
7. Include a short planning placeholder in each issue so `write-a-plan` can finalize the execution plan per issue

## Output
Task issues with:
- Parent PRD linkage
- Slice ID/name linkage to the PRD Implementation Tracker row
- Clear description of end-to-end behavior
- Acceptance criteria (testable)
- Changes by layer
- Blocked-by/blocks references
- User stories covered

Also provide a summary table with issue number, title, and blockers.

## Rules
- Never close or rewrite the parent PRD issue from this skill
- Each issue should represent an end-to-end slice, not a single-layer horizontal cut
- Create blockers first
- Keep one user-visible behavior per issue
- Use the implementation issue template sections; do not omit Objective, Acceptance Criteria, or Verification
- Preserve PRD slice IDs/names exactly; do not rename them during issue creation

## Error Handling
If the PRD is too vague to slice well, return to PRD refinement before creating issues.

## Examples
PRD: "Add user authentication"
Slices:
1. Basic sign-in flow end-to-end
2. Session/token lifecycle handling
3. Access control on protected actions
4. Credential recovery flow
