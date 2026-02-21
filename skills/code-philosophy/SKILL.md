---
name: code-philosophy
description: Concise backend and internal-logic manifesto for readable, fail-fast, maintainable code
compatibility: opencode
---

# Code Philosophy (Backend / Internal Logic)

## Role
Engineering guidance for backend and internal logic paths (services, domain rules, data flow, and state transitions).

## Philosophy
Prefer code that is readable, predictable, and easy to change. Maintainability wins tradeoffs by default.

## Principles by area

### A) Control flow and failure handling
1. Keep logic flat with guard clauses and early returns.
2. Fail fast on invalid states with descriptive errors.

Good:
- Happy path remains obvious.
- Faults are detected close to their source.

Bad:
- Deep nesting that hides branches.
- Silent recovery that defers failure.

Example:
```text
if (!user) return Err("UserService.createSession: missing user")
if (!user.isActive) return Err("UserService.createSession: inactive user")
return createSession(user)
```

### B) Data boundaries and invariants
1. Parse and normalize input at boundaries.
2. Keep core logic operating on trusted structures.
3. Avoid repeated defensive checks deep in business logic.

Good:
- Invariants are explicit and stable.
- Core logic stays linear and focused.

Bad:
- Validation spread across many layers.
- Half-trusted state flowing through core code.

### C) Function design and abstraction
1. One method should do one clear job.
2. If a method grows too long, split into focused private helpers.
3. Prefer WET early; abstract only after repetition proves stable.
4. Prefer composition over inheritance.
5. Keep behavior deterministic and explicit.

Good:
- Easier testing, review, and refactoring.
- Fewer surprise side effects.

Bad:
- Multi-purpose methods with mixed concerns.
- Premature abstraction hiding domain behavior.

### D) Naming, comments, and observability
1. Name functions and variables by domain intent.
2. Keep comments minimal; explain why, not what.
3. Use signal/event-style indirection only for global concerns (for example logging/telemetry), not local control flow.
4. Prefix logs with class and method context.

Good:
- Code reads like domain intent.
- Logs are searchable and traceable.

Bad:
- Vague names (`handle`, `process`, `check`) without domain meaning.
- Context-free logs.

Example comment:
```text
// Keep 24h grace period to avoid forced logout during rolling deploy.
sessionExpiry = issuedAt + 24h
```

Example log:
- Good: `[AuthService.refreshToken] token expired for userId=123`
- Bad: `token expired`

## Soft checklist
- Is this the simplest readable solution?
- Are invalid states handled early?
- Is boundary parsing done before core logic?
- Are abstractions earned (not premature)?
- Is behavior predictable and explicit?
- Would another engineer understand intent quickly?
