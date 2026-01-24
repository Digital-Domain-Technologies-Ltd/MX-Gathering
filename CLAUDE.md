---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "AI assistant guidance for working with MX-Gathering community content"
purpose: "ai-guidance"
keywords: [claude, ai-assistant, guidance, writing-style, yaml-frontmatter]
---

# CLAUDE.md

This file provides guidance to AI assistants when working with content in this repository.

## Repository Purpose

MX-Gathering is an open-source community repository for Machine Experience (MX) patterns, providing resources for event organization, discussion archives, shared LLM prompts, metadata standards, thought leadership, and community contributions.

## Repository Structure

**For complete technical structure and AI assistant guidance, see:** [docs/for-ai/architecture.md](docs/for-ai/architecture.md)

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

This community welcomes developers, business leaders, content creators, and anyone implementing convergence principles. Encourage knowledge sharing, support learning, and prioritize practical implementations.

## License

MIT License - This community content is open source to encourage participation and knowledge sharing.
