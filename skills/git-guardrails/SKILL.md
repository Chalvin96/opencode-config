---
name: git-guardrails
description: Enforces safe git practices and blocks destructive operations
compatibility: opencode
---

## Goal
Prevent accidental data loss from destructive git commands during assisted development.

## When to Use
- Always active before git operations
- Especially important during rebases, history rewrites, and cleanup

## Inputs
None. This is a behavioral safety skill.

## Prerequisites
None.

## Process
Before any git command, check whether it is destructive or history-rewriting. If risky, stop and request explicit approval.

## Output
Safe git operations only. Destructive operations require explicit user confirmation.

## Rules
Never run these without explicit user confirmation:
- `git push --force` or `git push -f`
- `git reset --hard`
- `git clean -f` or `git clean -fd`
- `git branch -D`
- `git checkout .`
- `git restore .`

Preferred alternatives:
- Instead of `reset --hard`: use `git stash`, `git revert`, or a backup branch
- Instead of `branch -D`: use `git branch -d` when possible
- Instead of `checkout .`: selectively restore files or stash first

Safe operations:
- `git status`, `git log`, `git diff`
- `git add`, `git commit`
- `git stash`, `git stash pop`
- `git pull` and `git push` without force

Branches:
- Do not push to master, main or dev branch directly. Always make another branch first

## Error Handling
If a blocked command seems necessary, explain why and request explicit approval first.

## Examples
About to run `git reset --hard HEAD~1`:
- Stop
- Explain intended outcome
- Offer `git revert` or backup-branch approach
