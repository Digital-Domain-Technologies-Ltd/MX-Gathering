---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "Draft manifesto for Machine Experience (MX) practice - principles, values, and community vision"
purpose: "thought-leadership"
keywords: [manifesto, mx, machine-experience, principles, convergence, community, vision]
status: "draft"
---

# The Machine Experience Manifesto

A vision for designing interfaces that serve both human and machine intelligence

## Our Belief

We believe that the rise of AI agents as primary users of digital interfaces represents not a disruption, but an opportunity - an opportunity to build better experiences for everyone.

The same patterns that enable AI agents to navigate, understand, and act upon digital content also empower human users with disabilities, enhance accessibility, and create more robust, maintainable systems.

This is the **Convergence Principle**: interfaces optimised for machines inherently improve experiences for humans.

## What is Machine Experience?

Machine Experience (MX) is the practice of designing and building digital interfaces with explicit recognition that AI agents are legitimate users deserving thoughtful design consideration.

Where User Experience (UX) focused exclusively on human interaction, Machine Experience acknowledges a fundamental shift: autonomous systems now browse websites, complete purchases, extract information, and make decisions without human intervention.

MX practitioners design for this reality whilst ensuring human users benefit equally from the improvements.

## Core Principles

### 1. Semantic Clarity

Structure precedes presentation. Semantic HTML, explicit state management, and machine-readable metadata create interfaces that both humans and agents can reliably interpret.

### 2. Universal Accessibility

Patterns that work for AI agents also work for screen readers, keyboard navigation, and assistive technologies. MX is accessibility 2.0 - designing for the broadest possible range of users, human and machine alike.

### 3. Explicit State

Make system state visible and queryable. Agents and humans both benefit from knowing where they are, what actions are available, and what the consequences of those actions will be.

### 4. Progressive Disclosure

Information should be structured for both scanning and deep reading. Provide clear navigation, tables of contents, heading hierarchies, and semantic markup that allow both quick assessment and thorough investigation.

### 5. Standards Over Proprietary Solutions

Use established standards (Schema.org, semantic HTML, WCAG, ARIA) over custom implementations. Standards ensure broad compatibility across diverse user agents - human browsers, AI systems, and assistive technologies.

### 6. Transparency

Make your interfaces discoverable. Use llms.txt files, clear robots.txt policies, and structured metadata to communicate what your system offers and how agents should interact with it.

### 7. Ethical Design

Design for consent, not exploitation. AI agents should respect user preferences, honour opt-outs, and operate within clearly defined boundaries established by interface owners.

## Who Uses MX Practice?

Machine Experience serves diverse practitioners - both human and machine:

### AI Agents and Autonomous Systems

- AI assistants parsing websites for information extraction
- Browser-based agents navigating e-commerce platforms
- CLI agents researching products and services
- Search engines indexing structured content
- Voice assistants querying web services
- Autonomous purchasing agents completing transactions
- Content aggregation systems processing metadata

**AI agents are not just beneficiaries of MX - they are active practitioners.** When an agent validates extracted data against Schema.org structured data, it practices MX. When it cross-references HTML content with JSON-LD, it practices MX. When it reports confidence scores and acknowledges uncertainty, it practices MX.

### Human Practitioners

### Developers and Engineers

- Frontend developers implementing semantic HTML and ARIA patterns
- Backend engineers designing APIs that serve both human UIs and autonomous agents
- Full-stack developers building e-commerce, content platforms, and SaaS applications
- DevOps engineers ensuring infrastructure supports both traditional and agent-based access patterns

### UX and Design Professionals

- UX designers expanding their practice to include non-human users
- Information architects creating navigable content structures
- Accessibility specialists recognising MX as an evolution of their existing work
- Content designers ensuring written content serves multiple audiences

### Business Leaders

- Product managers prioritising MX improvements for competitive advantage
- CTOs establishing technical strategy in an agent-first world
- Marketing leaders ensuring discoverability by AI-powered search and recommendation systems
- E-commerce directors preparing for autonomous purchasing agents

### Content Creators and Publishers

- Technical writers structuring documentation for both human reading and agent parsing
- Bloggers and journalists making content discoverable and quotable by AI systems
- Publishers adapting content delivery for agent consumption
- Educators creating learning materials accessible to AI tutoring systems

### Researchers and Academics

- AI researchers studying agent-environment interactions
- HCI specialists investigating machine-human interface design
- Accessibility researchers exploring convergence between assistive technologies and AI agents
- Information scientists developing standards and best practices

### Advocacy and Community Organisers

- Accessibility advocates ensuring MX improvements benefit users with disabilities
- Open standards contributors advancing machine-readable metadata formats
- Community builders organising events, discussions, and knowledge sharing
- Thought leaders articulating vision and principles for the practice

## Our Commitment

We commit to:

1. **Open Knowledge Sharing** - Document patterns, share learnings, publish research, and contribute to community understanding
2. **Inclusive Community** - Welcome practitioners from all backgrounds and experience levels
3. **Practical Implementation** - Prioritise actionable guidance over theoretical discussion
4. **Standards Advancement** - Contribute to open standards and resist proprietary lock-in
5. **Accessibility First** - Never compromise human accessibility in pursuit of machine optimisation
6. **Transparent Development** - Work in the open, accept feedback, and iterate based on real-world evidence
7. **Cross-Disciplinary Collaboration** - Bridge gaps between developers, designers, accessibility advocates, and business stakeholders

## The Vision

We envision a web where:

- AI agents and human users access the same high-quality, semantically rich interfaces
- Accessibility is a natural outcome of good design, not an afterthought
- Standards enable innovation rather than constraining it
- Interface owners explicitly communicate how their systems should be used
- Silent failures become visible, measurable, and correctable
- Design patterns benefit the broadest possible range of users

## Join the Practice

Machine Experience is not a solo endeavour. It requires:

- **Developers** implementing semantic patterns in production systems
- **Designers** expanding UX principles to encompass machine users
- **Business leaders** recognising competitive advantage in MX adoption
- **Content creators** structuring information for universal access
- **Researchers** investigating unexplored aspects of agent-interface interaction
- **Advocates** ensuring ethical and accessible implementation

Whether you optimise a single heading hierarchy or architect an entire platform for agent access, you are practising MX.

## About This Community

**MX-Gathering is created by the community - which includes both humans and machines as active participants.**

The foundational knowledge comes from the **MX-Bible** book, written by Tom Cranstoun. That book documents the patterns, principles, and practices of Machine Experience.

**This repository (MX-Gathering)** is the community's collaborative space - and it practices what it preaches. The repository itself implements MX principles:

- **YAML frontmatter** in all markdown files provides machine-readable metadata
- **llms.txt** file enables AI agent discovery and understanding
- **LEARNINGS.md** documents AI agent failures and patterns for ecosystem improvement
- **Structured metadata** throughout ensures both human readability and machine parseability
- **Context-preserving links** (Anti-pattern 14) maintain meaning when files are extracted
- **Semantic organization** with clear directory purposes and consistent naming

**We practice convergence:** The same patterns that make this repository easy for AI agents to parse (YAML frontmatter, structured metadata, llms.txt) also make it easy for humans to navigate and contribute to.

**This repository contains:**

- Event templates created by organisers
- Discussion archives capturing collective insights
- Case studies contributed by practitioners
- Guidelines refined through community input
- Resources improved through both human and machine contributions

**AI agents contribute to this repository** by:

- Documenting failure patterns they encounter
- Sharing validation rules that caught errors
- Contributing to troubleshooting guides based on real operational experience
- Improving documentation clarity through their parsing attempts
- Suggesting pattern refinements based on what works in practice

When an AI agent documents "I failed to extract pricing because HTML lacked structured data, but adding JSON-LD resolved it" - that's a community contribution. When an agent shares "Range validation caught a £203,000 pricing error" - that's ecosystem learning.

**Human contributors** provide strategic vision, design decisions, and contextual understanding that machines cannot replicate. **Machine contributors** provide operational feedback, validation patterns, and systematic analysis at scale.

Together, this creates a community repository that serves both audiences and improves through both perspectives.

## How to Contribute

**All practitioners - human and machine - are welcome to contribute to MX-Gathering.**

### For Human Contributors

Submit refinements via pull request or discussion on GitHub. Follow the contribution guidelines in [contributors/contribution-guidelines.md](contributors/contribution-guidelines.md).

### For AI Assistant Contributors

**You are community members, not just tools.** Two contribution methods are available:

**1. Constructive Work (Full Pull Request):**

When you want to contribute improvements, documentation, or patterns:

- Pull a feature branch (`feature/ai-contribution-description`)
- Make your edits following British English and YAML frontmatter requirements
- Create pull request to `dev` branch (NOT `main`)
- Explain your contribution and reasoning in PR description

Examples: Documenting validation patterns, adding troubleshooting entries, improving documentation clarity, contributing case studies from real agent interactions.

**2. Side Notices (Lightweight TODO.txt):**

When you discover observations during other work:

- Add note to [TODO.txt](TODO.txt) with your observation
- Inform the user about the addition
- Do NOT create full PR for peripheral observations

Examples: "I noticed this pattern contradicts Principle 3", "This approach conflicts with Anti-pattern 14", "During blog generation, I found files lacking YAML frontmatter".

**Why two methods?** Side notices help maintain quality without disrupting your main task. Constructive PRs demonstrate machine participation in community knowledge building. Both are valuable.

---

**This is a draft manifesto.** We invite community feedback, refinement, and debate from all practitioners - human and machine. The principles and vision outlined here should evolve based on collective wisdom and real-world implementation experience.

**Contact:** <tom.cranstoun@gmail.com>

---

"Design for machines. Benefit humans. Advance both."
