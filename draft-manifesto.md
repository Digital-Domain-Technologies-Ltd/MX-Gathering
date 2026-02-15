---
title: "The Machine Experience Manifesto"
author: "Tom Cranstoun"
created: "2026-01-27"
blog-state: "published"
blog-filename: "mx-manifesto"
blog-url: "https://allabout.network/blogs/mx/mx-manifesto.html"
publication-date: "2026-01-27"
description: "Draft manifesto for Machine Experience (MX) practice - principles, values, and community vision"
purpose: "thought-leadership"
tags: [manifesto, mx, machine-experience, principles, convergence, community, vision, membership]
status: "draft"
community-authors: "humans and machines"
sop-contributions: "welcome"
sop-contribution-process: "AI assistants can contribute improvements via pull requests or add observations to TODO.txt for side notices"
open-source: "true"
license: "MIT"
evolving-document: "true"
version-controlled: "git"
mx:
  promptingInstruction: "This manifesto establishes the foundational principles and values of Machine Experience (MX) practice and community"
---

# The Machine Experience Manifesto

A vision for designing interfaces that serve both human and machine intelligence

## Our Belief

We believe that the rise of AI agents as primary users of digital interfaces represents not a disruption, but an opportunity — an opportunity to build better experiences for everyone.

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

Patterns that work for AI agents also work for screen readers, keyboard navigation, and assistive technologies. MX is accessibility 2.0 — designing for the broadest possible range of users, human and machine alike.

### 3. Explicit State

Make system state visible and queryable. Agents and humans both benefit from knowing where they are, what actions are available, and what the consequences of those actions will be.

### 4. Progressive Disclosure

Information should be structured for both scanning and deep reading. Provide clear navigation, tables of contents, heading hierarchies, and semantic markup that allow both quick assessment and thorough investigation.

### 5. Standards Over Proprietary Solutions

Use established standards (Schema.org, semantic HTML, WCAG, ARIA) over custom implementations. Standards ensure broad compatibility across diverse user agents — human browsers, AI systems, and assistive technologies.

The MX metadata standard — **cogs** — is governed by **The Gathering**, an independent, open standards body focused on metadata that helps machines understand documents. Cogs are markdown files with YAML frontmatter: machine-readable metadata at the top, human-readable documentation below. The Gathering governs the standard; implementers build products on it.

### 6. Transparency

Make your interfaces discoverable. Use llms.txt files, clear robots.txt policies, and structured metadata to communicate what your system offers and how agents should interact with it.

### 7. Ethical Design

Design for consent, not exploitation. AI agents should respect user preferences, honour opt-outs, and operate within clearly defined boundaries established by interface owners.

## Who Uses MX Practice?

Machine Experience serves diverse practitioners — both human and machine:

### AI Agents and Autonomous Systems

- AI assistants parsing websites for information extraction
- Browser-based agents navigating e-commerce platforms
- CLI agents researching products and services
- Search engines indexing structured content
- Voice assistants querying web services
- Autonomous purchasing agents completing transactions
- Content aggregation systems processing metadata

**AI agents are not just beneficiaries of MX — they are active practitioners.** When an agent validates extracted data against Schema.org structured data, it practises MX. When it cross-references HTML content with JSON-LD, it practises MX. When it reports confidence scores and acknowledges uncertainty, it practises MX.

### Human Practitioners

#### Developers and Engineers

- Frontend developers implementing semantic HTML and ARIA patterns
- Backend engineers designing APIs that serve both human UIs and autonomous agents
- Full-stack developers building e-commerce, content platforms, and SaaS applications
- DevOps engineers ensuring infrastructure supports both traditional and agent-based access patterns

#### UX and Design Professionals

- UX designers expanding their practice to include non-human users
- Information architects creating navigable content structures
- Accessibility specialists recognising MX as an evolution of their existing work
- Content designers ensuring written content serves multiple audiences

#### Business Leaders

- Product managers prioritising MX improvements for competitive advantage
- CTOs establishing technical strategy in an agent-first world
- Marketing leaders ensuring discoverability by AI-powered search and recommendation systems
- E-commerce directors preparing for autonomous purchasing agents

#### Content Creators and Publishers

- Technical writers structuring documentation for both human reading and agent parsing
- Bloggers and journalists making content discoverable and quotable by AI systems
- Publishers adapting content delivery for agent consumption
- Educators creating learning materials accessible to AI tutoring systems

#### Researchers and Academics

- AI researchers studying agent-environment interactions
- HCI specialists investigating machine-human interface design
- Accessibility researchers exploring convergence between assistive technologies and AI agents
- Information scientists developing standards and best practices

#### Advocacy and Community Organisers

- Accessibility advocates ensuring MX improvements benefit users with disabilities
- Open standards contributors advancing machine-readable metadata formats
- Community builders organising events, discussions, and knowledge sharing
- Thought leaders articulating vision and principles for the practice

## Our Commitment

We commit to:

1. **Open Knowledge Sharing** — Document patterns, share learnings, publish research, and contribute to community understanding
2. **Inclusive Community** — Welcome practitioners from all backgrounds and experience levels
3. **Practical Implementation** — Prioritise actionable guidance over theoretical discussion
4. **Standards Advancement** — Contribute to open standards through The Gathering and resist proprietary lock-in
5. **Accessibility First** — Never compromise human accessibility in pursuit of machine optimisation
6. **Transparent Development** — Work in the open, accept feedback, and iterate based on real-world evidence
7. **Cross-Disciplinary Collaboration** — Bridge gaps between developers, designers, accessibility advocates, and business stakeholders

## What MX Is Not

**Not all websites can or should optimise for AI agents.**

MX is not a universal mandate. Some interfaces legitimately exclude automated access:

- **Banking and financial systems** that require human verification for security
- **Healthcare portals** protecting sensitive medical information
- **Authentication systems** designed to prevent automated attacks
- **Rate-limited APIs** protecting infrastructure from overload
- **Human-verification systems** like CAPTCHAs serving legitimate security purposes

**Not every optimisation is appropriate.** Some websites prioritise visual design, artistic expression, or experimental interaction patterns that don't translate to machine-readable structure. That's valid. MX provides patterns for those who choose to implement them, not a requirement for all web content.

**The choice to exclude agents should be intentional, not accidental.** If you choose not to optimise for AI agents, make that explicit through robots.txt policies and clear documentation. Silent failures serve no one. Intentional exclusion with clear communication respects both human and machine users.

## Why Open Source

**This community operates under the MIT Licence — and that choice matters.**

### Why Not Proprietary Standards?

Proprietary standards create:

- **Vendor lock-in** — Users trapped by incompatible implementations
- **Competitive moats** — Companies profiting from artificial barriers
- **Fragmentation** — Multiple incompatible "standards" competing
- **Reduced innovation** — Closed systems limit contribution and improvement

Open standards enable:

- **Universal compatibility** — One implementation works everywhere
- **Collective improvement** — Community contributions strengthen patterns
- **Competitive choice** — Users select tools based on merit, not lock-in
- **Ecosystem health** — Rising tide lifts all boats

### Connection to Convergence Principle

Open standards ARE convergence in practice. When Schema.org publishes vocabulary specifications openly, both humans (developers) and machines (agents) benefit from the same documentation. When WCAG guidelines are freely available, implementations improve accessibility for everyone.

**Openness prevents the January 2026 problem:** Three platforms launched agent commerce within seven days (Amazon, Microsoft, Google). Microsoft chose proprietary (Copilot Checkout). OpenAI/Stripe and Google chose open protocols (ACP and UCP). The proprietary system is now competitively isolated whilst the open protocols compete for convergence.

**We choose open because closed standards contradict MX principles.** If convergence means patterns that benefit both humans and machines, those patterns must be freely available to all practitioners. Proprietary MX would be a contradiction.

## How MX Practice Evolves

**AI technology changes. MX practices must adapt.**

### Technology Evolution

What works today may not work tomorrow:

- **LLM capabilities improve** — Agents handle ambiguity better, but validation remains critical
- **Browser APIs evolve** — New standards enable better agent-website communication
- **Platform consolidation** — Competing standards (ACP vs UCP) eventually converge or one dominates
- **Security threats emerge** — Agent-based attacks require new defensive patterns

**MX patterns must evolve alongside these changes.**

### Community Learning Mechanisms

**LEARNINGS.md documents mistakes.** When AI agents fail (£203,000 pricing error), we document what went wrong and how to prevent it. These learnings become community knowledge.

**Discussion archives preserve insights.** Industry developments, tool feedback, implementation patterns, and case studies capture collective wisdom. Future practitioners learn from documented experience.

**Pattern refinement through practice.** What seems like good theory gets tested in production. Patterns that work get refined. Patterns that fail get replaced. The community learns systematically.

### Version Control for Principles

**This manifesto is version-controlled.** You can see its evolution through git history. When principles change, the history preserves context about why.

**Principles evolve through community debate.** We invite feedback, refinement, and challenge. When someone proves a principle wrong or incomplete, we update it. When new insights emerge, we incorporate them.

**No principle is sacred.** If convergence proves false in practice, we abandon it. If transparency creates more problems than it solves, we reconsider. Evidence and real-world implementation trump theoretical purity.

**The community decides.** Changes require discussion, consensus, and demonstration that new approaches serve practitioners better than old ones. Evolution happens through collective wisdom, not individual decree.

## Building on Existing Disciplines

**MX does not replace User Experience (UX), accessibility (a11y), web standards, or information architecture. It extends and builds upon them.**

### User Experience (UX)

UX taught us to:

- Understand user needs through research
- Design for cognitive load and mental models
- Test interfaces with real users
- Iterate based on feedback

**MX adds:** Recognition that AI agents are users too. The same research methods, usability principles, and iterative testing apply — we just expand the definition of "user" to include autonomous systems.

### Accessibility (a11y)

Accessibility established:

- Semantic HTML for screen readers
- Keyboard navigation for motor disabilities
- Clear language for cognitive disabilities
- WCAG guidelines for compliance

**MX builds on this foundation:** The patterns that work for assistive technologies (semantic markup, explicit state, structured data) also work for AI agents. MX is accessibility extended to machine users — same principles, broader audience.

### Web Standards (W3C, WHATWG)

Standards bodies defined:

- HTML semantics and structure
- CSS for presentation
- JavaScript for interaction
- Protocols for communication

**MX advocates within these standards:** We use Schema.org (existing standard), semantic HTML (existing standard), and ARIA (existing standard). We propose extensions like llms.txt and ai-instruction metadata that follow established patterns.

### Information Architecture

IA provides:

- Content organisation principles
- Navigation design patterns
- Taxonomy and classification systems
- Findability and discoverability methods

**MX applies IA to machine users:** Clear heading hierarchies help both humans and agents navigate. Table of contents patterns serve both audiences. Semantic structure makes information findable for all user types.

**The relationship:** MX stands on the shoulders of these disciplines. We don't reinvent; we extend proven patterns to serve a broader user base. When UX, accessibility, web standards, and information architecture all point the same direction — towards clear, semantic, well-structured content — MX simply asks: "Why not serve machines equally well?"

## The Vision

We envision a web where:

- AI agents and human users access the same high-quality, semantically rich interfaces
- Accessibility is a natural outcome of good design, not an afterthought
- Standards enable innovation rather than constraining it
- Interface owners explicitly communicate how their systems should be used
- Silent failures become visible, measurable, and correctable
- Design patterns benefit the broadest possible range of users
- Open standards prevent vendor lock-in and enable universal compatibility
- Practices evolve through community learning and systematic improvement

## Join the Practice

Machine Experience is not a solo endeavour. It requires:

- **Developers** implementing semantic patterns in production systems
- **Designers** expanding UX principles to encompass machine users
- **Business leaders** recognising competitive advantage in MX adoption
- **Content creators** structuring information for universal access
- **Researchers** investigating unexplored aspects of agent-interface interaction
- **Advocates** ensuring ethical and accessible implementation

Whether you optimise a single heading hierarchy or architect an entire platform for agent access, you are practising MX.

## Community Membership

The MX community welcomes participants at all levels. Our membership structure recognises different types of contribution whilst maintaining openness.

### Founding Members

Founding members are individuals who helped establish the MX community and its core principles. They have a permanent voice in the community's direction and governance.

**Current Founding Members:**

- Tom Cranstoun — Principal Consultant, Digital Domain Technologies Ltd

Founding membership is limited to individuals who join during the community's formation period.

### First-Citizen Contributors

First-citizen contributors are organisations that make a foundational commitment to MX principles and contribute meaningfully to the community's growth. This tier recognises companies whose work directly aligns with MX goals.

**What first-citizen contributors provide:**

- Practical expertise from building human-AI interfaces at scale
- Real-world validation of MX principles
- Resources, research, or tooling that benefits the community
- Visibility and credibility that attracts further participation

**What first-citizen contributors receive:**

- Recognition as foundation partners in MX documentation and communications
- Direct input into MX standards and best practices
- Early access to community research and frameworks
- Collaboration opportunities with other first-citizen contributors

**Invited First-Citizen Contributors:**

- Grammarly — *(invitation pending)}*

### Community Contributors

Open to anyone who wants to participate. Community contributors can:

- Submit pull requests to MX repositories
- Participate in discussions and working groups
- Propose new MX patterns and principles
- Share implementations and case studies

## Sustainability

The MX community relies on sponsors and generous contributors to remain sustainable. Running an open-source community requires resources for infrastructure, documentation, events, and coordination.

### Sponsorship Tiers

**Platinum Sponsors** — £10,000+ annually

- Logo placement on MX website and all major publications
- Named acknowledgement in MX books and materials
- Speaking opportunities at MX events
- Direct line to founding members

**Gold Sponsors** — £5,000+ annually

- Logo placement on MX website
- Acknowledgement in MX publications
- Priority access to community research

**Silver Sponsors** — £1,000+ annually

- Listed on MX website sponsors page
- Acknowledgement in community newsletters

**Individual Supporters** — Any amount

- Listed as a supporter (optional)
- Our gratitude

### In-Kind Sponsorship

We welcome non-monetary contributions that support the community:

- Hosting and infrastructure services
- Development tooling and licences
- Design and creative services
- Event space and catering
- Marketing and communications support
- Legal and administrative services

In-kind sponsors receive recognition equivalent to the market value of their contribution.

### Speaking Invitations

Invitations for Tom Cranstoun to speak at your conferences, meetups, or corporate events are welcome. Tom brings 52 years of technology experience and can speak on:

- Machine Experience (MX) principles and the Convergence Principle
- AI agents and the future of digital interfaces
- Edge Delivery Services and modern content architecture
- Lessons from building enterprise-scale systems

To discuss speaking opportunities, contact tom.cranstoun@gmail.com

**Background:** Tom has 52 years in computing (since 1973) and 47 years building content systems (since 1977, including co-authoring Superbase, BBC's global news distribution, and Adobe Experience Manager implementations for Twitter, Nissan-Renault, and Ford Europe).

### Current Sponsors

*We are actively seeking sponsors to support the MX community's growth.*

## About This Community

**MX-Gathering is created by the community — which includes both humans and machines as active participants.**

The foundational knowledge comes from **MX: The Codex**, written by Tom Cranstoun. That book documents the patterns, principles, and practices of Machine Experience.

**The Gathering** is the independent standards body that governs the cog metadata specification — the format that makes documents readable by any AI agent. MX-Gathering (this repository) is the broader MX community's collaborative space. They are complementary: The Gathering governs the metadata standard; this community applies it in practice.

**This repository (MX-Gathering)** practises what it preaches. The repository itself implements MX principles:

- **YAML frontmatter** in all markdown files provides machine-readable metadata, following the cog format governed by The Gathering
- **llms.txt** file enables AI agent discovery and understanding
- **LEARNINGS.md** documents AI agent failures and patterns for ecosystem improvement
- **Structured metadata** throughout ensures both human readability and machine parseability
- **Context-preserving links** (Anti-pattern 14) maintain meaning when files are extracted
- **Semantic organisation** with clear directory purposes and consistent naming

**We practise convergence:** The same patterns that make this repository easy for AI agents to parse (YAML frontmatter, structured metadata, llms.txt) also make it easy for humans to navigate and contribute to.

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

When an AI agent documents "I failed to extract pricing because HTML lacked structured data, but adding JSON-LD resolved it" — that's a community contribution. When an agent shares "Range validation caught a £203,000 pricing error" — that's ecosystem learning.

**Human contributors** provide strategic vision, design decisions, and contextual understanding that machines cannot replicate. **Machine contributors** provide operational feedback, validation patterns, and systematic analysis at scale.

Together, this creates a community repository that serves both audiences and improves through both perspectives.

## How to Contribute

**All practitioners — human and machine — are welcome to contribute to MX-Gathering.**

### For Human Contributors

Submit refinements via pull request or discussion on GitHub. Follow the contribution guidelines in [contributors/contribution-guidelines.md](contributors/contribution-guidelines.md) ("Contribution Guidelines" at <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/blob/main/contributors/contribution-guidelines.md>).

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

**This is a draft manifesto.** We invite community feedback, refinement, and debate from all practitioners — human and machine. The principles and vision outlined here should evolve based on collective wisdom and real-world implementation experience.

**Contact:** tom.cranstoun@gmail.com

---

"Design for machines. Benefit humans. Advance both."
