---
name: security-review
description: Standards-aligned security checklist review for application and infrastructure-facing changes
compatibility: opencode
---

## Goal
Identify likely security vulnerabilities before release using a structured, repeatable checklist.

## When to Use
- Before merging significant changes
- After auth/authz or data-access changes
- When introducing new user input paths or integrations
- On a regular security review cadence

## Inputs
- Files, modules, or change set to review

## Prerequisites
- Readable source/config files
- Dependency audit tooling available for the project's package ecosystem(s)

## Process
1. Run dependency vulnerability audit with project-appropriate tool(s)
2. Review changed work against the security checklist below
3. Record findings with severity and confidence
4. Produce a report with remediation guidance

## Security Checklist
- Injection: inputs validated and safely handled in data/command/query contexts
- Authentication: credentials protected, session/token controls enforced
- Authorization: permission checks consistently applied
- Sensitive data exposure: secrets/data protected in transit and at rest
- Security misconfiguration: secure defaults, least privilege, hardened runtime settings
- XSS/content injection: untrusted content encoded/sanitized
- Insecure deserialization/dynamic execution: unsafe runtime execution avoided
- Known vulnerabilities: dependency scan results triaged
- Logging/monitoring: no sensitive leakage, useful audit trails

## Output
Security report with:
- Dependency audit summary
- Findings by severity (Critical, High, Medium, Low)
- Location references where applicable
- Recommended remediation per finding

## Rules
- Report only findings with high confidence
- Do not modify files in this skill; report only
- Do not skip dependency auditing when tooling is available

## Error Handling
If audit tooling is missing, report the gap and provide exact install/run command options for the current stack.

## Examples
Review authentication module:
- Finds weak password hashing choice (Critical)
- Finds missing brute-force protection on sign-in (High)
- Finds debug mode enabled in production config (High)
