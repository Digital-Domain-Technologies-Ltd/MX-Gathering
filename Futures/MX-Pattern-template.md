---
title: "MX Pattern Intent Template"
description: "Reusable template for authoring MX pattern intents with structured, machine-readable fields"
author: Tom Cranstoun
created: 2026-02-06
modified: 2026-02-09
version: "1.0"
status: draft
---

Here's a clean, reusable **MX Pattern Intent Template** you can drop into the MX Bible, your publishing system, or any agent‑authored document. It's intentionally minimal, structured, and machine‑readable — the kind of thing both humans and agents can work with confidently.

---

# **MX Pattern Intent Template**

```markdown
## Pattern intent

**Name:** mx.pattern.<domain>.<purpose>.<platform>  
**Intent:** <One‑sentence description of what this pattern enables>

### Context
- **Platform:** <macOS / Linux / Windows / Cloud / Hybrid>
- **Agent runtime:** <Clawdbot / Custom / Other>
- **Model runtime:** <Ollama / Cloud provider / Hybrid>
- **Boundary:** <Local-only / Cloud / Mixed>
- **Audience:** <Developers / Operators / Authors / Agents>

### Problem
<Describe the problem this pattern solves in 2–3 sentences.  
Focus on clarity, reproducibility, and machine–human collaboration.>

### Forces
- <Force 1: e.g., privacy requirements>
- <Force 2: e.g., reproducibility>
- <Force 3: e.g., local vs cloud trade-offs>
- <Force 4: e.g., governance or metadata needs>

### Solution
<Short description of the approach this pattern defines.  
Explain the architecture at a high level without implementation detail.>

### Resulting context
- <Outcome 1: e.g., agent runs locally with predictable behaviour>
- <Outcome 2: e.g., model provenance is explicit>
- <Outcome 3: e.g., boundaries are clearly defined>

### Consequences
**Positive:**
- <Benefit 1>
- <Benefit 2>

**Negative / Trade-offs:**
- <Trade-off 1>
- <Trade-off 2>

### Known uses
- <Project, team, or example using this pattern>

### Related patterns
- mx.pattern.<something-related>
- mx.pattern.<another-related>
```

---

If you want, I can also generate a **filled‑in version** for your Clawdbot + Ollama pattern using this template.
