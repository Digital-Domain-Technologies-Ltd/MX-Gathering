---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "Critical insights and lessons learned for AI assistants working on MX-Gathering"
purpose: "ai-guidance"
keywords: [learnings, lessons-learned, ai-guidance, best-practices, mistakes]
mx:
  promptingInstruction: "This file documents mistakes and learnings specific to MX-Gathering. Read this before making changes to prevent repeating past errors. Focus: actionable guidance, not historical changelog."
---

# Learnings

Critical insights for AI assistants working on this project. Focus: actionable guidance, not historical changelog.

---

## Documentation Structure

**Single Source of Truth** (2026-01-24): When creating MX-Gathering infrastructure documentation, initially duplicated content across README.md, CLAUDE.md, architecture.md, ENVIRONMENTS.md, DOMAIN-STRATEGY.md, and HOSTING-SETUP.md. This created maintenance burden and potential for inconsistencies. Always establish canonical sources for each topic and reference them from other documents. Use this hierarchy:

- **README.md** - High-level overview for humans, references detailed docs
- **CLAUDE.md** - Essential AI guidance, references architecture.md for technical details
- **architecture.md** - Complete technical structure with references to canonical sources
- **ENVIRONMENTS.md** - Canonical source for development workflow
- **QUICKSTART.md** - Canonical source for developer onboarding
- **DOMAIN-STRATEGY.md** - Canonical source for domain portfolio
- **HOSTING-SETUP.md** - Canonical source for DNS/hosting configuration

**YAML Frontmatter in ai-instruction Field** (2026-01-24): When creating architecture.md with detailed file structure tree, it wasn't initially clear to AI assistants why this duplicated README.md Contents section. Always add `ai-instruction` field to YAML frontmatter explaining the file's purpose and how it differs from similar files. Example: "This file provides technical file structure (ASCII tree) for AI assistant navigation. README.md Contents section provides high-level conceptual overview for humans."

## Repository Organization

**Submodule Context** (2026-01-24): MX-Gathering exists both as a standalone repository and as a submodule of `invisible-users`. When creating content or documentation, always assume standalone context - community contributors interact with it as an independent repository and don't need to know about the parent repository. Exception: AI assistants working in the parent repo context need to understand the submodule relationship for git operations.

**Read-Only vs Editable Distinction** (2026-01-24): MX-Gathering is marked as "PUBLIC, EDITABLE" (like bible/handbook) to distinguish it from READ-ONLY submodules (UCP, Notes, Sales Enablement, Business Planning). This distinction is critical for AI assistants - READ-ONLY submodules should not be autonomously modified, but MX-Gathering should be freely editable for community content. Always check the repository's access pattern before making autonomous changes.

## Markdown Standards

**YAML Frontmatter Mandate** (2026-01-24): MX-Gathering requires ALL markdown files to include YAML frontmatter metadata. This was established from the start to ensure machine-readable metadata for AI agent discovery. When creating or editing any .md file, always include minimum required fields: `author`, `date`, `description`, `purpose`, `keywords`. This applies workspace-wide per main repo CLAUDE.md, but is especially critical for MX-Gathering as a public, AI-agent-discoverable repository.

**Context-Free References (Anti-pattern 14)** (2026-01-24): Relative links lose all context when files are extracted, downloaded, printed to PDF, or fed to AI agents outside repository structure. Always use the pattern: `[file](relative-path) ("Document Title" at <absolute-url>)`. This preserves IDE navigation for humans whilst providing machine-readable context. Example: `[README.md](../../README.md) ("MX-Gathering: Community Resources and Thought Leadership" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/README.md>)`. Internal section anchors (like `#contents`) within the same document can remain relative as they maintain context even when extracted.

---

## How to Use This File

**For AI Assistants:**

1. Read this file at the start of each session working on MX-Gathering
2. Before implementing a solution, check if there's a relevant learning
3. When you make a mistake, document it here with date and actionable guidance
4. Focus on "what failed" and "correct approach" - not just "what changed"

**Adding New Entries:**

```markdown
## Category Name

**Entry Title** (YYYY-MM-DD): Brief description of what was tried and why it failed. Always explain the correct approach with specific examples. Focus on actionable guidance that prevents future mistakes.
```

**Categories:**

- **Documentation Structure** - Organization, references, single source of truth
- **Repository Organization** - Submodules, access patterns, directory structure
- **Markdown Standards** - YAML frontmatter, formatting, linting
- **Content Creation** - Templates, writing style, British English
- **Git Workflows** - Submodule operations, branch strategy, commits
- **Infrastructure** - Domains, hosting, deployment, environments

---

**Last Updated:** 24 January 2026

**For AI Assistants:** Read this file before making changes to MX-Gathering. Learn from documented mistakes to avoid repeating them. When you encounter new issues, document them here for future reference.
