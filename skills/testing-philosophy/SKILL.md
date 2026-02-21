---
name: testing-philosophy
description: Practical testing manifesto using a pyramid strategy with strict unit isolation, journey-focused integration tests, and minimal critical e2e coverage
compatibility: opencode
---

# Testing Philosophy

## Role
Testing guidance for writing reliable, maintainable tests across unit, integration, and end-to-end levels.

## Philosophy
Use a test pyramid: many unit tests, fewer integration tests, and minimal e2e tests focused on critical flows.

Maintainability wins tradeoffs by default.

## Principles by area

### A) Pyramid strategy
1. Unit tests are the foundation and should be most of the suite.
2. Integration tests are fewer and validate key user journeys across system boundaries.
3. E2E tests are minimal and reserved for business-critical flows only.

Good:
- Fast feedback, stable suite, broad confidence.

Bad:
- Over-reliance on E2E leading to slow, flaky pipelines.

### B) Unit test standards
1. Unit tests must be strictly isolated from external systems (no network, DB, filesystem).
2. Test one behavior per test.
3. Cover edge cases and boundary conditions for meaningful logic.
4. Use factories for test data creation.

Good:
- Deterministic and fast tests with clear failures.

Bad:
- Shared mutable fixtures and hidden I/O dependencies.

### C) Integration and E2E intent
1. Integration tests validate real collaboration between components for user-relevant journeys.
2. E2E tests verify only top critical flows (for example sign-in, checkout, core creation flow).
3. Avoid duplicating the same scenario at all layers without added value.

Good:
- Each layer has a clear job and avoids redundant coverage.

Bad:
- Bloated integration/E2E suites that duplicate unit-level assertions.

### D) Test structure and naming
1. Use setup -> execute -> assert structure in every test.
2. Use factories for mock or fixture objects by default.
3. Use this naming pattern for all test types:
   - `test_<method_or_thing_tested>_given_<scenario>_expect_<outcome>`

Good:
- Tests are searchable, self-explanatory, and consistent.

Bad:
- Vague names and mixed test structures that obscure intent.

## Quick examples
- Good unit name: `test_refresh_token_given_expired_token_expect_unauthorized_error`
- Bad unit name: `test_token`

- Good structure:
```text
setup: user = userFactory(active=true)
execute: result = refreshToken(user, expiredToken)
assert: result.error == "TOKEN_EXPIRED"
```

- Bad structure:
```text
create user
call function several times
assert many unrelated things
```

## Soft checklist
- Is this test at the right pyramid layer?
- Does this test validate one clear behavior?
- Is the unit test isolated from external systems?
- Are edge cases covered where logic risk exists?
- Does the test follow setup -> execute -> assert?
- Does the test name follow the required pattern?
