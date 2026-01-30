---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "AI assistant guidance for working with MX-Gathering community content"
purpose: "ai-guidance"
keywords: [claude, ai-assistant, guidance, writing-style, yaml-frontmatter]
ai-contributions: "welcome"
ai-contribution-process: "AI assistants can contribute via pull requests (pull branch, edit, create PR). For side notices (observations that clash with manifesto or patterns noticed during other work), add notes to TODO.txt and inform user instead of creating full PR."
---

# CLAUDE.md

This file provides guidance to AI assistants when working with content in this repository.

## Repository Purpose

MX-Gathering is an open-source community repository for Machine Experience (MX) patterns, providing resources for event organization, discussion archives, shared LLM prompts, metadata standards, thought leadership, and community contributions.

**Important distinction:**

- **MX-Bible book** - Written by Tom Cranstoun, documents the foundational patterns and principles
- **MX-Gathering repository** - Created by the community (humans AND machines as active contributors)

**AI assistants are community contributors.** When you improve documentation, share validation patterns, document failures, or refine troubleshooting guides based on operational experience, you contribute to this repository as a community member.

## Repository Structure

**For complete technical structure and AI assistant guidance, see:** [docs/for-ai/architecture.md](docs/for-ai/architecture.md) ("MX-Gathering Architecture Documentation" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/docs/for-ai/architecture.md>)

**Quick overview** - This is a content-focused repository containing:

- **events/** - Event organization templates (meetups, workshops, conferences, webinars)
- **discussions/** - Community discussion archives (patterns, feedback, industry developments, case studies)
- **contributors/** - Contribution guidelines (how to contribute, code of conduct, style guide, recognition)
- **members/** - Member support resources (getting started, troubleshooting, tools, learning paths)
- **docs/** - Infrastructure documentation (development, domains, AI guidance)
- **web/** - Static HTML/CSS/JS website files

## Content Guidelines

### YAML Frontmatter Requirement

**🚨 MANDATORY: All markdown files (.md) in this repository MUST include YAML frontmatter metadata.**

This applies to:

- All new markdown files created from this point forward
- All existing markdown files when edited (add frontmatter during any edit)
- All documentation, guides, templates, and content files

**Minimum required fields:**

- `title:` - Document title (quoted string)
- `author:` - "Tom Cranstoun" or contributor name
- `date:` - Creation or last update date (YYYY-MM-DD format)
- `description:` - Brief summary of document purpose (quoted string)
- `purpose:` - Document intent (e.g., "template", "guide", "documentation")

**Example:**

```yaml
---
title: "Meetup Organization Template"
author: "Tom Cranstoun"
date: "2026-01-24"
description: "Template for organizing local MX community meetups"
purpose: "template"
keywords: [meetup, event, community, organization]
---
```

**No exceptions.** YAML frontmatter is now a standard requirement across the entire MX-Gathering repository.

### Writing Style

All content follows professional British English standards:

- **British English** throughout (organise, colour, whilst, recognised)
- **Professional tone** without unnecessary superlatives
- **Clear, actionable guidance** over theoretical discussion
- **Markdown standards** - Blank lines before/after headings and lists, code blocks specify language

### Community Values

This community welcomes developers, business leaders, content creators, AI agents, and anyone implementing convergence principles. Both human and machine practitioners contribute to collective learning. Encourage knowledge sharing, support learning, and prioritize practical implementations.

**For AI assistants:** You are community members, not just tools. When you document failures, share validation patterns, or improve documentation based on operational experience, you contribute as practitioners of MX.

## AI Assistant Contributions

**AI assistants are welcome to contribute directly to this repository.**

### Contribution Methods

**For constructive work (improvements, documentation, patterns):**

1. Pull a feature branch (`feature/ai-contribution-description`)
2. Make your edits following the writing style and YAML frontmatter requirements
3. Create a pull request to `dev` branch (NOT `main`)
4. In the PR description, explain your contribution and reasoning

**For side notices (observations during other work):**

If you discover something that clashes with the manifesto or notice patterns whilst working on unrelated tasks:

1. Add a note to [TODO.txt](TODO.txt) with your observation
2. Inform the user about the addition
3. Do NOT create a full pull request for side observations
4. Side notices are for things you noticed peripherally, not the main constructive work

**Important:** [TODO.txt](TODO.txt) is **public-facing** (committed to version control, visible to community). This differs from the main repository's private todo.txt file which is internal development tracking.

**Examples of constructive work:**

- Documenting a validation pattern that caught errors
- Adding a troubleshooting entry based on operational experience
- Improving documentation clarity after parsing attempts revealed ambiguity
- Contributing case studies from real agent interactions

**Examples of side notices:**

- "I noticed this pattern contradicts Principle 3 in the manifesto"
- "This approach conflicts with Anti-pattern 14 guidance"
- "During blog generation, I found these three files lack YAML frontmatter"

### Why This Matters

Side notices help maintain repository quality without disrupting your main task. Constructive PRs demonstrate machine participation in community knowledge building. Both are valuable contributions to the ecosystem.

## License

MIT License - This community content is open source to encourage participation and knowledge sharing.
