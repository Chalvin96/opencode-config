---
name: write-a-plan
description: Interviews the user and writes an execution plan directly in a GitHub issue workflow
compatibility: opencode
---

## Goal
Produce a clear, execution-ready plan tied to a GitHub issue so work can move smoothly through a Kanban board.

## When to Use
- After a PRD or feature issue exists
- Before implementation of non-trivial work
- When an issue needs clearer sequencing, scope, or acceptance checks

## Inputs
- GitHub issue URL/number
- Feature context (PRD, notes, or user description)
- Constraints (time, risk, dependencies)

## Prerequisites
- Access to repository and GitHub issue data
- Issue has enough context to define intended outcome

## Process
1. Read the target issue and linked context (PRD, related issues, comments).
2. Interview for missing scope details, risks, and anti-goals.
3. Break work into small vertical steps that deliver visible progress.
4. Add verification criteria for each meaningful step.
5. Identify dependencies and blockers, and sequence accordingly.
6. Draft the plan in issue-friendly format:
   - Objective
   - Scope and non-goals
   - Ordered implementation steps
   - Verification checklist
   - Dependencies/blockers
   - Rollout or handoff notes (if relevant)
7. Run plan review with user/stakeholders, then revise for clarity and sequencing.
8. Publish plan to the GitHub issue (comment or issue body update based on project norm).
9. Keep the plan and feedback in the same issue for easy follow-through.

## Output
- Updated GitHub issue with a structured implementation plan
- Clear acceptance and verification checklist
- Explicit dependency/blocker mapping
- Reviewer feedback notes

## Rules
- Keep plan steps atomic and executable
- Prefer vertical slices over layer-by-layer horizontal cuts
- Do not include stack-specific assumptions unless already established in the repo
- If requirements are ambiguous, capture assumptions explicitly
- Keep the issue as the single source of truth for implementation status
- Do not treat plan as execution-ready until review feedback is resolved or explicitly deferred

## Error Handling
If issue context is too vague, return a short clarification questionnaire before finalizing the plan.

## Examples
Issue: "Add user authentication"
- Plan defines scope (sign-in, sign-out, session handling)
- Steps are ordered by dependency and include verification criteria
- Blockers and rollout notes are added to the same issue
