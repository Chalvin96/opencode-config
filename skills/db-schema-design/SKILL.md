---
name: db-schema-design
description: Designs database schemas with migrations, indexes, and constraints
compatibility: opencode
---

## Goal
Produce a production-ready schema and migration plan that fits the existing system.

## When to Use
- Adding a new entity to the data model
- Modifying existing tables or relationships
- Planning a feature that requires schema changes

## Inputs
- Description of the feature or entity
- Existing schema context (models, DDL, or migration history)
- Related PRD or task issue (optional)

## Prerequisites
- Access to current schema definitions and migration history
- Chosen migration tool for the project

## Process
1. Explore existing schema and migrations to understand current conventions
2. Identify entities, relationships, cardinality, and lifecycle rules
3. Design schema structures and relationships using project-appropriate normalization
4. Define column types, nullability, defaults, keys, constraints, and cascade behavior
5. Identify indexes for join paths and frequent query patterns
6. Update schema definitions in the project's canonical format
7. Create or generate migration files with the project's migration workflow
8. Review generated migrations for unintended changes and rollback safety
9. Present schema diff and migration plan for review

## Output
- Updated schema definitions in project-standard locations
- Migration file(s) in the project migration directory
- Simple schema diagram (ASCII or markdown) showing tables and relationships

## Rules
- Use stable primary keys and consistent naming conventions
- Avoid UUID4 as primary key, use either int ot UUID7
- Include creation/update timestamps when the domain requires auditability
- Define explicit foreign key constraints and referential behavior
- Never store secrets in plaintext
- Index foreign keys by default unless there is a strong reason not to
- Prefer soft-delete patterns only when product requirements call for recoverability

## Error Handling
If migration autogeneration includes unexpected changes, stop and inspect mapping/config drift before applying.

## Examples
Feature: "Users can have multiple addresses"
- Add `addresses` with `user_id` foreign key
- Add index on `user_id`
- Add migration and verify rollback behavior
