# Implementation Issue Template

## Status and Ownership
- Status: <!-- Planned | In Progress | Merged | Deployed -->
- Owner:
- Target milestone/release:

## Objective
- What user-visible outcome should this issue deliver?

## Linked Context
- PRD: <!-- issue link/number -->
- Parent issue (optional): <!-- issue link/number -->

## User Journey Reference
- Journey ID(s): <!-- from PRD User Journeys, e.g. J1, J2 -->
- Journey title(s):
  - 
- How this issue advances the journey:
  - 

## API Contract Delta (if applicable)
- Endpoint(s):
  - 
- Request/response changes:
  - 
- Auth/permission impact:
  - 
- Error handling changes:
  - 

## Scope
- In scope:
  - 
- Out of scope:
  - 

## Implementation Details
- What to change (systems/layers/components):
  - 
- Target files or artifacts:
  - 
- Expected behavior change:
  - 
- Non-trivial constraints:
  - 

## Data and Migration Plan (if applicable)
- Schema/model changes:
  - 
- Data import/backfill/cleanup tasks:
  - 
- Idempotency and re-run behavior:
  - 
- Rollback plan:
  - 

## Execution Commands
- Build/run commands:
  - 
- Data/setup commands:
  - 
- Test commands:
  - 

## Anti-Goals
- What should this implementation explicitly avoid?
- Keep this aligned with `docs/design-baseline.md` when UI is involved.

## Testing Decisions
- Unit test intent (edge cases, isolated behaviors):
  - 
- Integration test intent (user journey/system collaboration):
  - 
- E2E test intent (critical flow only, if needed):
  - 
- Follow naming: `test_<method_or_thing_tested>_given_<scenario>_expect_<outcome>`
- Follow structure: setup -> execute -> assert

## Acceptance Criteria
- [ ] Criterion 1 (testable)
- [ ] Criterion 2 (testable)

## Verification
- How to verify behavior locally or in staging:
  - 

## Dependencies and Blockers
- Depends on:
  - 
- Blocks:
  - 

## Risks and Observability
- Primary implementation risks:
  - 
- Mitigations:
  - 
- Logs/metrics/signals to confirm behavior:
  - 

## Implementation Notes
- Constraints or assumptions:
  - 

## Definition of Done
- [ ] Acceptance criteria met
- [ ] Verification steps completed
- [ ] PR references this issue/task
