---
name: write-pr-description
description: Creates a pull request title and description that clearly references linked issues/tasks and verification details
compatibility: opencode
---

## Goal
Create a pull request description that makes traceability obvious: what changed, why, and which issue/task it implements.

## When to Use
- When opening a new pull request
- When a pull request lacks clear linkage to issue/task context
- Before requesting review

## Inputs
- Pull request URL/number
- Base branch and change summary
- Linked issue/task references
- PRD reference (optional)

## Prerequisites
- Pull request exists and is accessible
- At least one related issue/task exists

## Process
1. Read pull request changes and linked issue/task context.
2. Confirm the primary issue/task this PR implements.
3. Draft a title that reflects the implemented outcome and includes issue/task reference in project-preferred format.
4. Draft PR description with:
   - What changed
   - Why it changed
   - Linked issue/task references
   - Verification steps
   - Scope boundaries or non-goals (if relevant)
5. Ensure links and references are explicit and unambiguous.
6. Create or update the PR title and description.

## Output
- Updated PR title with clear issue/task linkage
- Updated PR description with context, references, and verification steps

## Rules
- Every PR must reference at least one issue/task
- Title must reflect the implemented change, not generic wording
- Description references must be explicit (issue/task IDs or links)
- Verification steps must be reproducible
- Keep wording concise and reviewer-focused

## Error Handling
If no linked issue/task can be identified, stop and request the missing reference before finalizing title/description.

## Examples
Issue `#142` implements session refresh reliability:
- Title: `Improve session refresh reliability (#142)`
- Description includes summary, rationale, linked issue, and verification steps
