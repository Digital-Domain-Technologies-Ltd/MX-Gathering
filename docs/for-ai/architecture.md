---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "Repository architecture and structure guide for AI assistants"
purpose: "ai-guidance"
keywords: [architecture, repository-structure, ai-guidance, documentation, mx-gathering]
ai-instruction: "This file provides technical file structure (ASCII tree) for AI assistant navigation. README.md Contents section provides high-level conceptual overview for humans. Both serve different purposes: README.md = human-facing descriptions, architecture.md = AI-facing technical details with precise file paths."
---

# MX-Gathering Repository Architecture

This document explains the MX-Gathering repository structure, organization principles, and content patterns for AI assistants working with this codebase.

## Repository Context

### What is MX-Gathering?

MX-Gathering is a **public, open-source community repository** for Machine Experience (MX) patterns.

**For complete overview, see:** [README.md](../../README.md) ("MX-Gathering: Community Resources and Thought Leadership" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/README.md>)

**Key purposes:**

- Event organization resources
- Discussion archives
- Community guidelines and member support
- Domain and hosting infrastructure

### Relationship to Parent Repository

MX-Gathering is a **git submodule** of the main `invisible-users` repository:

- **Parent repository:** `invisible-users` (main orchestration hub)
- **Submodule path:** `packages/mx-gathering/`
- **Standalone repository:** `https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering`
- **Access pattern:** Works both as a standalone repo and as part of the larger ecosystem

**Key distinction:** While MX-Gathering is developed within the parent repository's context, it is **published and consumed as a standalone repository** by community contributors who may never interact with the parent repo.

### Related Projects

MX-Gathering is part of the broader MX ecosystem:

- **MX-Bible** - Comprehensive guide to Machine Experience patterns (~78,000 words)
- **MX-Handbook** - Practical implementation handbook (11 chapters)
- **Web Audit Suite** - Automated analysis tool for MX pattern compliance
- **Universal Commerce Protocol (UCP)** - Standardised ecommerce APIs for AI agents

## Repository Structure

**For high-level contents overview, see:** [README.md - Contents](../../README.md#contents) ("MX-Gathering: Community Resources and Thought Leadership" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/README.md#contents>)

**Detailed file structure for AI assistants:**

```text
MX-Gathering/
├── README.md                          # Repository overview (standalone-friendly)
├── CLAUDE.md                          # AI assistant guidance
├── llms.txt                           # AI agent discovery metadata
├── LICENSE                            # MIT License
├── TODO.txt                           # Deployment checklist with YAML frontmatter
├── .github/                           # GitHub configuration
│   ├── workflows/                     # CI/CD automation
│   │   ├── pr-checks.yml              # HTML validation, accessibility, performance
│   │   └── deployment-notify.yml      # Deployment notifications
│   └── PULL_REQUEST_TEMPLATE.md       # PR template with checklists
├── web/                               # Website files (static HTML/CSS/JS)
│   └── index.html                     # Primary landing page (WCAG 2.1 AA compliant)
├── docs/                              # Documentation
│   ├── for-ai/                        # AI assistant guidance
│   │   └── architecture.md            # This file
│   ├── development/                   # Development workflow
│   │   ├── ENVIRONMENTS.md            # Environment strategy (prod/staging/dev)
│   │   └── QUICKSTART.md              # 5-minute developer onboarding
│   └── domains/                       # Domain and hosting
│       ├── DOMAIN-STRATEGY.md         # Portfolio strategy for 5 domains
│       └── HOSTING-SETUP.md           # DNS/Cloudflare configuration
├── events/                            # Event organization resources
│   ├── README.md                      # Event resources overview
│   ├── meetup-template.md             # Local meetup planning
│   ├── workshop-template.md           # Workshop structure
│   ├── conference-talk-template.md    # Conference proposal format
│   └── webinar-template.md            # Online event planning
├── discussions/                       # Community discussion archives
│   ├── README.md                      # Archive overview
│   ├── implementation-patterns.md     # Pattern discussions
│   ├── tool-feedback.md               # Web Audit Suite feedback
│   ├── industry-developments.md       # Industry analysis
│   └── case-studies.md                # Real-world experiences
├── contributors/                      # Contribution guidelines
│   ├── README.md                      # Contributor resources overview
│   ├── contribution-guidelines.md     # How to contribute
│   ├── code-of-conduct.md             # Community standards
│   ├── style-guide-summary.md         # Writing style guidance
│   └── recognition.md                 # Contributor acknowledgement
└── members/                           # Member support resources
    ├── README.md                      # Member resources overview
    ├── implementation-checklist.md    # Step-by-step getting started
    ├── reading-guide.md               # Book navigation guide
    ├── tools-and-resources.md         # Curated tool recommendations
    └── troubleshooting.md             # Common issues and solutions
```

## Content Organization Principles

### 1. Purpose-Driven Directory Structure

Each top-level directory serves a distinct audience and purpose:

| Directory | Audience | Purpose | Content Type |
| --- | --- | --- | --- |
| `events/` | Event organizers | Facilitate community gatherings | Templates, guides |
| `discussions/` | Community members | Preserve collective wisdom | Archives, commentary |
| `contributors/` | Contributors | Enable participation | Guidelines, standards |
| `members/` | End users | Support implementation | Guides, resources |
| `docs/development/` | Developers | Infrastructure setup | Technical docs |
| `docs/domains/` | Infrastructure team | Hosting configuration | DNS, deployment |
| `docs/for-ai/` | AI assistants | Understanding structure | Architecture guides |
| `web/` | Public visitors | Web presence | HTML, CSS, JS |

### 2. File Naming Conventions

**Markdown files:**

- Lowercase with hyphens: `implementation-checklist.md`
- Descriptive names indicating content: `conference-talk-template.md`
- README.md in each directory for overview

**Documentation files:**

- UPPERCASE for repository-level: `README.md`, `CLAUDE.md`, `LICENSE`
- Descriptive with context: `DOMAIN-STRATEGY.md`, `QUICKSTART.md`

**Special files:**

- `TODO.txt` - Deployment checklist (with YAML frontmatter despite .txt extension)
- `llms.txt` - AI discovery metadata (markdown with .txt extension)

### 3. YAML Frontmatter Requirement

**🚨 CRITICAL:** ALL markdown files (.md) in this repository MUST include YAML frontmatter metadata.

**Minimum required fields:**

```yaml
---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "Brief summary of document purpose"
purpose: "template|documentation|guide|discussion-archive"
keywords: [relevant, tags, for, discoverability]
---
```

**Standard purposes:**

- `template` - Reusable event/content templates
- `documentation` - Reference documentation
- `guide` - Step-by-step instructions
- `discussion-archive` - Community conversation records
- `ai-guidance` - Instructions for AI assistants
- `development-guide` - Developer documentation
- `infrastructure-documentation` - Hosting/deployment docs
- `community-guidelines` - Contribution standards

**Why YAML frontmatter?**

- Machine-readable metadata for AI agent discovery
- Consistent across Hugo, Jekyll, Gatsby, Quarto, Pandoc
- Enables automated processing and indexing
- Schema.org mapping for semantic web

## Content Types and Patterns

### Event Templates (events/)

**Purpose:** Standardized formats for organizing community events

**Pattern:**

```markdown
---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "Template for [event type]"
purpose: "template"
keywords: [event-type, community, organization]
---

# [Event Type] Template

## Overview
Brief description of event format

## Planning Checklist
- [ ] Item 1
- [ ] Item 2

## Event Structure
Timing, format, activities

## Post-Event
Sharing outcomes, lessons learned
```

**Files:**

- `meetup-template.md` - Local in-person gatherings
- `workshop-template.md` - Hands-on learning sessions
- `conference-talk-template.md` - Conference proposal format
- `webinar-template.md` - Online presentations

### Discussion Archives (discussions/)

**Purpose:** Preserve valuable community conversations and insights

**Pattern:**

```markdown
---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "[Discussion topic] archive"
purpose: "discussion-archive"
keywords: [topic, patterns, analysis]
---

# [Discussion Topic]

## Archive Format

Each discussion entry includes:
- Date and context
- Summary of key points
- Conclusions or recommendations
- Related resources

## Discussions

### [Discussion Title] - [Date]

Content...
```

**Files:**

- `implementation-patterns.md` - Pattern discussions and debates
- `tool-feedback.md` - Web Audit Suite and tool feedback
- `industry-developments.md` - Analysis of AI agent ecosystem
- `case-studies.md` - Real-world implementation experiences

### Contributor Guidelines (contributors/)

**Purpose:** Enable effective community participation

**Pattern:**

```markdown
---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "[Guideline aspect]"
purpose: "community-guidelines"
keywords: [contributing, community, standards]
---

# [Guideline Title]

Clear, actionable guidance for contributors
```

**Files:**

- `contribution-guidelines.md` - How to contribute (fork, branch, PR workflow)
- `code-of-conduct.md` - Community behavioral expectations
- `style-guide-summary.md` - Writing standards (British English, tone, formatting)
- `recognition.md` - Contributor acknowledgement and appreciation

### Member Resources (members/)

**Purpose:** Support community members implementing MX patterns

**Pattern:**

```markdown
---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "[Resource type] for MX implementation"
purpose: "guide"
keywords: [members, support, implementation]
---

# [Resource Title]

Practical, actionable content for members
```

**Files:**

- `implementation-checklist.md` - Step-by-step getting started (audit, prioritize, implement, measure)
- `reading-guide.md` - Curated paths through MX-Bible and MX-Handbook
- `tools-and-resources.md` - Recommended tools for MX implementation
- `troubleshooting.md` - Common issues and solutions

### Development Documentation (docs/development/)

**Purpose:** Infrastructure setup and deployment workflows

**Pattern:**

```markdown
---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "[Infrastructure aspect]"
purpose: "development-guide"
keywords: [development, infrastructure, deployment]
---

# [Infrastructure Topic]

Technical documentation for developers
```

**Files:**

- `ENVIRONMENTS.md` - Complete environment strategy (prod/staging/dev/preview)
- `QUICKSTART.md` - 5-minute developer onboarding

### Domain Documentation (docs/domains/)

**Purpose:** Domain portfolio and hosting configuration

**Files:**

- `DOMAIN-STRATEGY.md` - Strategy for 5 purchased domains (.ai, .net, .info, .store, .xyz)
- `HOSTING-SETUP.md` - DNS, Cloudflare, SSL/TLS, GitHub Pages configuration

## Development Workflow

**For complete development environment strategy, see:** [docs/development/ENVIRONMENTS.md](../development/ENVIRONMENTS.md) ("MX-Gathering Development Environments" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/docs/development/ENVIRONMENTS.md>)

**For quick developer onboarding, see:** [docs/development/QUICKSTART.md](../development/QUICKSTART.md) ("Developer Quick Start Guide" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/docs/development/QUICKSTART.md>)

### Development Quick Reference

**Branch strategy:** `feature/* → dev → staging → main (production)`

**Environment mapping:**

- Production: `main` branch → mx-thegathering.ai
- Staging: `staging` branch → staging.mx-thegathering.ai
- Development: `dev` branch → dev.mx-thegathering.ai
- Preview: `feature/*` branches → Auto-generated URLs

**Automated testing:** All PRs trigger HTML validation, link checking, accessibility audits, and performance testing via GitHub Actions.

## AI Assistant Guidance

### Key Concepts for AI Assistants

#### 1. Standalone vs Submodule Context

This repository exists in two contexts:

- **Standalone:** Community contributors interact with it as an independent repo
- **Submodule:** Part of larger `invisible-users` workspace

When creating content, assume **standalone context** - contributors don't need to know about the parent repository.

#### 2. Open Development Philosophy

MX-Gathering follows "develop in the open" principles:

- All development is public and transparent
- Community contributions are encouraged
- Issues and discussions are open
- Clear separation of environments prevents accidental production changes

#### 3. Content vs Code Repository

This is a **content-focused repository** with minimal build tooling:

- Plain HTML/CSS/JS (no build process required)
- Markdown documentation and templates
- GitHub Actions for validation (not compilation)
- Deployments are file copies, not builds

#### 4. YAML Frontmatter Enforcement

All markdown files require YAML frontmatter. When creating or editing markdown:

1. Always include frontmatter block at file start
2. Use appropriate `purpose` field for content type
3. Include descriptive `description` field
4. Add relevant `keywords` array for discoverability

#### 5. Writing Style Standards

- **British English:** organise, colour, whilst, recognised
- **Professional tone:** Clear, direct, without superlatives
- **Actionable guidance:** "Do X" not "You might want to consider X"
- **Markdown formatting:** Blank lines before/after headings and lists

### Common AI Assistant Tasks

**Creating event templates:**

1. Use existing templates as reference (`events/*.md`)
2. Follow consistent structure (Overview, Planning, Structure, Post-Event)
3. Include YAML frontmatter with `purpose: "template"`
4. Add checklists for actionable steps

**Archiving discussions:**

1. Add to appropriate file in `discussions/`
2. Include date and context
3. Summarize key points and conclusions
4. Link to related resources

**Updating documentation:**

1. Maintain YAML frontmatter when editing
2. Update `date` field to reflect changes
3. Keep navigation links consistent
4. Test all relative links

**Adding member resources:**

1. Focus on practical, actionable content
2. Include examples where possible
3. Link to related MX-Bible/MX-Handbook sections
4. Add to `members/README.md` navigation

### Files AI Assistants Should Read First

When working with this repository, AI assistants should read in this order:

1. **[README.md](../../README.md)** ("MX-Gathering: Community Resources and Thought Leadership" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/README.md>) - Repository overview and purpose
2. **[CLAUDE.md](../../CLAUDE.md)** ("AI Assistant Guidance" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/CLAUDE.md>) - AI assistant guidance and writing standards
3. **[docs/for-ai/architecture.md](architecture.md)** ("MX-Gathering Repository Architecture" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/docs/for-ai/architecture.md>) - This file (structure and patterns)
4. **[llms.txt](../../llms.txt)** ("MX-Gathering: Community Resources and Thought Leadership" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/llms.txt>) - AI discovery metadata
5. Relevant subdirectory README.md for specific work area

## Domain and Hosting Architecture

**For complete domain portfolio strategy, see:** [docs/domains/DOMAIN-STRATEGY.md](../domains/DOMAIN-STRATEGY.md) ("MX-Gathering Domain Strategy" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/docs/domains/DOMAIN-STRATEGY.md>)

**For DNS, Cloudflare, and hosting configuration, see:** [docs/domains/HOSTING-SETUP.md](../domains/HOSTING-SETUP.md) ("MX-Gathering Hosting and DNS Setup Guide" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/docs/domains/HOSTING-SETUP.md>)

**For deployment checklist, see:** [TODO.txt](../../TODO.txt) ("MX-Gathering: Next Steps and Deployment Tasks" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/TODO.txt>)

### Domain Quick Reference

**5 purchased domains:**

- Primary: `mx-thegathering.ai`
- Secondary: `mx-thegathering.net`, `.info`, `.store`, `.xyz`

**Hosting platform:** Cloudflare Pages with branch-based deployments

**Configuration status:** Infrastructure documented, Cloudflare connection pending (see TODO.txt)

## File Metadata Standards

### llms.txt Format

The `llms.txt` file uses YAML frontmatter despite the `.txt` extension:

```yaml
---
title: "MX-Gathering: Community Resources and Thought Leadership"
author: "Tom Cranstoun"
creation-date: "24/Jan/2026"
last-updated: "24/Jan/2026"
description: "Brief summary"
longdescription: "Extended context for AI agents"
repository: "https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering"
license: "MIT"
ai-instruction: "Instructions for AI agents parsing this file"
---

# Content in markdown format
```

**Purpose:** AI agent discovery and context provision

### TODO.txt Format

The `TODO.txt` file includes YAML frontmatter for task tracking metadata:

```yaml
---
title: "MX-Gathering: Next Steps and Deployment Tasks"
author: "Tom Cranstoun"
creation-date: "24/Jan/2026"
last-updated: "24/Jan/2026"
purpose: "Deployment checklist and configuration reminders"
priority: "high"
status: "pending-cloudflare-configuration"
---

# TODO content in markdown format
```

**Purpose:** Deployment checklist and infrastructure reminders

## Key Relationships and References

### Parent Repository Integration

When changes are made to MX-Gathering:

1. Commit and push changes within `packages/mx-gathering/`
2. Update parent repo's submodule pointer
3. Commit pointer update in parent repo

**Never:**

- Commit to parent repo before submodule
- Assume submodule changes are visible to parent automatically
- Edit submodule from outside its directory

### Cross-Repository References

MX-Gathering references but doesn't depend on:

- **MX-Bible** - For comprehensive pattern explanations
- **MX-Handbook** - For implementation guidance
- **Web Audit Suite** - For analysis and validation tools
- **Universal Commerce Protocol (UCP)** - For ecommerce AI agent patterns

These references are informational only - MX-Gathering is self-contained.

## Contribution Workflow

**For complete contribution guidelines, see:** [contributors/contribution-guidelines.md](../../contributors/contribution-guidelines.md) ("Contribution Guidelines" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/contributors/contribution-guidelines.md>)

**For code of conduct, see:** [contributors/code-of-conduct.md](../../contributors/code-of-conduct.md) ("Code of Conduct" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/contributors/code-of-conduct.md>)

**For writing style guide, see:** [contributors/style-guide-summary.md](../../contributors/style-guide-summary.md) ("Style Guide Summary" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/contributors/style-guide-summary.md>)

### Quick Reference for AI Assistants

**Essential workflow:**

1. Read [CLAUDE.md](../../CLAUDE.md) ("AI Assistant Guidance" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/CLAUDE.md>) for writing style and YAML frontmatter requirements
2. Check existing templates in relevant directory
3. Follow branch strategy: feature/* → dev → staging → main
4. All markdown files MUST include YAML frontmatter
5. Use British English and professional tone
6. Test links and verify markdown formatting

**Commit message format:** `<type>: <description>` (feat, docs, fix, refactor, chore)

**PR target:** Always open PRs to `dev` branch (NOT `main`)

## Contact and Maintainership

**For contact information and license details, see:** [README.md](../../README.md) ("MX-Gathering: Community Resources and Thought Leadership" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/README.md>)

**Repository:** <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering>

---

**Last Updated:** 24 January 2026

**For AI Assistants:** This architecture document provides the foundation for working with MX-Gathering. Read [CLAUDE.md](../../CLAUDE.md) ("AI Assistant Guidance" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/CLAUDE.md>) for writing style guidance and [llms.txt](../../llms.txt) ("MX-Gathering: Community Resources and Thought Leadership" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/llms.txt>) for project context before making changes.
