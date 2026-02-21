---
name: write-a-prd
description: Interviews the user about a feature and writes a structured PRD in the project tracker
compatibility: opencode
---

## Goal
Produce a Product Requirements Document that captures problem, scope, user journeys, and decisions clearly enough to start implementation planning.

## When to Use
- Starting a new feature or major change
- Before implementation or task breakdown
- When scope and requirements need alignment

## Inputs
- Feature idea or problem statement
- Target repository/project context

## Prerequisites
- Access to the project issue tracker
- Enough stakeholder context to define success criteria

## Process
1. Collect problem context and business/user motivation
2. Explore current system behavior and constraints
3. Interview for user journeys, roles, edge cases, non-goals, dependencies, and external preparation/operational tasks
4. Capture decision considerations for major choices (options considered, chosen approach, rationale, trade-offs, and revisit triggers)
5. Draft PRD using `docs/templates/prd-template.md`
6. Run PRD review with user/stakeholders and iterate until ready
7. Publish or update the PRD in the project tracker
8. Ensure each Implementation Tracker row has a stable Slice ID and name that remains unchanged after issue creation

## Output
Tracker issue containing:
- Problem statement
- Proposed solution
- User journeys
- Technical constraints
- Implementation decisions (high level)
- Decision considerations (structured trade-off records)
- Dependencies
- External preparation and operations (for example data import/preparation, provisioning, and readiness checks)
- Out of scope
- Open questions
- Notes
- Reviewer feedback notes
- Implementation Tracker table for slice progress (`Planned`, `In Progress`, `Merged`, `Deployed`)
- Stable slice identifiers (for example `S1`, `S2`) used consistently across PRD, issues, and PRs

## Rules
- Keep PRD implementation-aware but code-agnostic
- Do not include file paths or code snippets
- Keep PRD focused on user journeys and expected outcomes; avoid low-level implementation detail
- Include required external preparation/operational tasks when they affect delivery readiness
- Do not create task issues in this skill (use issue breakdown skill)
- Keep decision considerations structured; keep notes lightweight and unstructured
- Do not treat PRD as final until review feedback is resolved or explicitly deferred
- Use template sections; do not omit Problem Statement, Scope, Decision Considerations, or Implementation Tracker
- Do not rename existing slice IDs or names after they are referenced by issues/PRs; add a new slice row when scope changes materially

## Examples
Feature request: "Add user authentication"
Interview covers auth method, session model, protected actions, recovery flow, abuse controls, and rollout constraints.
