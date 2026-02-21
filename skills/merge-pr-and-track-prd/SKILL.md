---
name: merge-pr-and-track-prd
description: Squash-merges a pull request after checks pass, writes a change-aware commit message, then updates the linked PRD implementation tracker
compatibility: opencode
---

## Goal
Safely merge a pull request and immediately record delivery progress in the linked PRD.

## When to Use
- Finalizing an implementation pull request
- Updating PRD delivery tracking at merge time
- Enforcing required checks before merge

## Inputs
- Pull request URL/number
- Repository context
- Linked PRD issue URL/number (if not discoverable from PR references)
- Slice name in the PRD Implementation Tracker (if not inferable)

## Prerequisites
- Permission to merge the target pull request
- Access to GitHub checks/status for the pull request
- Linked PRD contains an `Implementation Tracker` section

## Process
1. Fetch pull request details (state, base branch, linked issues, mergeability).
2. Validate all required GitHub checks are successful.
3. If any required check is pending or failed, do not merge; report blockers clearly.
4. Confirm pull request is approved and mergeable under repository rules.
5. Review pull request changes (title, commits, and diff summary) and draft a concise squash commit message that reflects what changed and why.
6. Squash-merge the pull request using the drafted commit message.
7. Resolve linked PRD and target slice row in `Implementation Tracker`.
8. Update the slice status to `Merged` and attach PR reference and merge date.
9. Preserve existing tracker rows; only update the relevant slice row.
10. Post a short note in the PRD issue summarizing the tracker update.

## Output
- Merged pull request (or explicit non-merge reason)
- Squash commit message aligned with merged changes
- Updated PRD `Implementation Tracker` row with:
  - Status: `Merged`
  - PR link/reference
  - Merge date
- Confirmation note with what was updated

## Rules
- Never merge when required checks are failing or pending
- Never bypass branch protection or required review policies
- Use squash merge only
- Squash commit message must reflect actual merged changes and rationale
- If PRD link or slice mapping is ambiguous, ask for clarification before tracker update
- Keep tracker edits minimal and scoped to the matching row
- Do not modify PRD requirement content in this skill; update tracking data only

## Error Handling
If tracker row cannot be found, add a clearly labeled new row with inferred fields and mark unresolved fields as assumptions.

## Examples
PR `#248` linked to PRD `#120` and slice "Session refresh":
- Required checks pass
- PR is squash-merged with a change-aware commit message
- PRD tracker row for "Session refresh" is updated to `Merged` with `#248` and merge date
