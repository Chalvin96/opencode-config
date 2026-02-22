# opencode-config

Personal opencode agent setup — 12 agents, 15 skills, 4 MCP servers.

## Install

```bash
git clone <this-repo> ~/opencode-config
cd ~/opencode-config
bash install.sh
```

The installer will:
- Symlink all config into `~/.config/opencode/`
- Print setup checklist for auth and dependencies

## Structure

```
agents/       12 specialized agents with scoped permissions
skills/       15 reusable workflow skills
plugins/      native opencode plugins
config/       global opencode settings (including MCP servers)
install.sh    interactive installer
```

## Agents

| Agent | Mode | Model | Role |
|---|---|---|---|
| architect | primary | codex-5.3-high | System design, ADRs |
| planner | primary | codex-5.3-high | PRDs and GH issues |
| executor | primary | glm-4.7 | Implementation manager (explore -> delegate -> approvals) |
| ui-designer | subagent | codex-5.3 | React, Vite, shadcn/ui |
| debugger | all | codex-5.3 | Error diagnosis |
| explorer | subagent | codex-mini-latest | Read-only codebase navigation |
| glm-coder | subagent | glm-4.7 | Strict plan-based code implementation |
| researcher | subagent | codex-mini-latest | External docs and web search |
| reviewer | subagent | codex-5.3 | Code review by severity |
| ui-reviewer | subagent | codex-5.3 | Playwright visual review |
| security-auditor | subagent | codex-5.3 | Security risk review |
| scribe | subagent | codex-mini-latest | Obsidian decision/session notes |

## Skills

| Skill | Purpose |
|---|---|
| `write-a-prd` | Interview → PRD as GH issue |
| `code-philosophy` | Core backend/internal-logic engineering philosophy |
| `frontend-philosophy` | Core frontend design and implementation philosophy |
| `testing-philosophy` | Pyramid-based testing philosophy and standards |
| `ensure-design-baseline` | Ensure docs/design-baseline.md exists and is current |
| `prd-to-issues` | PRD → vertical-slice task issues |
| `design-an-interface` | 3+ competing interface designs aligned to baseline |
| `write-a-plan` | Interview → bite-sized implementation plan |
| `git-guardrails` | Block destructive git operations |
| `write-to-obsidian` | Write notes to `/mnt/Obsidian` |
| `write-a-skill` | Interview → scaffold new SKILL.md |
| `write-pr-description` | PR title/body with explicit issue linkage |
| `merge-pr-and-track-prd` | Squash merge with checks + PRD tracker update |
| `db-schema-design` | Database schema + migration planning |
| `security-review` | Security checklist audit |

## MCP Servers

`context7` · `gh_grep` · `playwright` · `shadcn`

## Adding new skills

Use the `@write-a-skill` skill — it interviews you and scaffolds the SKILL.md using the standard template.
