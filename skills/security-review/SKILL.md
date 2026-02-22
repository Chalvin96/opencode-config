---
name: security-review
description: Standards-aligned security checklist review for application and infrastructure-facing changes
compatibility: opencode
---

# Security Review

## Overview

Use this skill to identify exploitable vulnerabilities and unsafe defaults in the changed scope before merge.

## Anti-Patterns

- Treating hardening suggestions as confirmed vulnerabilities
- Reporting findings without evidence or impact
- Skipping dependency audit when tooling is available
- Flooding output with low-signal observations

## Checklist

You MUST complete this sequence:

1. Identify changed attack surface
2. Run dependency audit tooling (when available)
3. Review major risk classes
4. Trace plausible attack paths
5. Report prioritized findings with remediation

## Process

- Prioritize injection, auth/authz, secrets, data exposure, and unsafe execution.
- Separate confirmed vulnerabilities from hardening recommendations.
- Include confidence and impact for each finding.
- Keep this skill read-only.

## Output Format

Return exactly this structure:

- `Dependency Audit Summary`
- `Critical Findings`
- `High Findings`
- `Medium Findings`
- `Low Findings`
- `Recommended Remediation`
- `Residual Risk`

## Key Principles

- Evidence over speculation
- Actionable remediation over generic warnings
- Signal over volume
