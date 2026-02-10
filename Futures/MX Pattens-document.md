---
title: "MX Pattern Document: Clawdbot Local Agent on macOS"
description: "Complete MX pattern document with YAML frontmatter, XMP metadata, JSON-LD, and full pattern intent"
author: Tom Cranstoun
created: 2026-02-06
modified: 2026-02-09
version: "1.0"
status: draft
---

Absolutely, Tom — let's turn your pattern intent into a **full MX Pattern Document**, structured exactly the way the MX Bible expects: clear, metadata‑rich, machine‑readable, and human‑friendly. This version is complete, polished, and ready to drop straight into the MX Bible as an official pattern entry.

I’ll include:

- YAML frontmatter  
- XMP metadata  
- JSON‑LD  
- Full pattern intent  
- Forces, problem, solution  
- Step‑by‑step implementation  
- Quick start  
- Architecture diagram (SVG)  
- Governance notes  

Everything is self‑contained and consistent with the MX Constitution and your publishing standards.

---

# **📘 MX Pattern: Clawdbot Local Agent on macOS**

```markdown
---
title: "MX Pattern: Clawdbot Local Agent on macOS"
subtitle: "A local‑only agent pattern using Clawdbot + Ollama"
author:
  - name: "Tom Cranstoun"
    role: "Author, MX Bible"
  - name: "Microsoft Copilot"
    role: "Machine co-author"
date: "2026-01-25"
version: "1.0.0"
mx:
  discipline: "Machine Experience (MX)"
  pattern_type: "Agent Integration Pattern"
  maturity: "alpha"
  context:
    platform: "macOS"
    agent_runtime: "Clawdbot"
    model_runtime: "Ollama"
    scope: "Local-only, developer workstation"
tags:
  - mx
  - mx-pattern
  - clawdbot
  - ollama
  - macos
  - local-ai
  - agents
  - governance
description: "A complete MX pattern for running Clawdbot as a local agent on macOS, backed by Ollama, with explicit steps, quick-start, and architecture diagram."
canonical_url: "https://example.com/mx-bible/patterns/clawdbot-macos-local-agent"
license: "CC BY-SA 4.0"
---

<!--
XMP Metadata (for MX Bible PDF export)
<rdf:Description xmlns:dc="http://purl.org/dc/elements/1.1/">
  <dc:title>MX Pattern: Clawdbot Local Agent on macOS</dc:title>
  <dc:creator>Tom Cranstoun; Microsoft Copilot</dc:creator>
  <dc:description>A complete MX pattern for running Clawdbot as a local agent on macOS, backed by Ollama.</dc:description>
  <dc:subject>Machine Experience, Clawdbot, Ollama, macOS, Local AI, Agents, Governance</dc:subject>
</rdf:Description>
-->

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "TechArticle",
  "headline": "MX Pattern: Clawdbot Local Agent on macOS",
  "author": [
    { "@type": "Person", "name": "Tom Cranstoun" },
    { "@type": "Organization", "name": "Microsoft Copilot" }
  ],
  "datePublished": "2026-01-25",
  "description": "A complete MX pattern for running Clawdbot as a local agent on macOS, backed by Ollama.",
  "keywords": [
    "Machine Experience",
    "MX",
    "Clawdbot",
    "Ollama",
    "macOS",
    "Local AI",
    "Agents"
  ]
}
</script>

# MX Pattern: Clawdbot Local Agent on macOS

This pattern defines how to run **Clawdbot** as a **local‑only agent** on macOS, using **Ollama** as the model runtime. It is designed for MX practitioners who want a private, reproducible, machine‑readable agent environment with clear boundaries and governance.

---

## 1. Pattern intent

**Name:** `mx.pattern.clawdbot.local-agent.macos`  
**Intent:** Run a local‑only agent on macOS using Clawdbot as the agent runtime and Ollama as the model runtime, ensuring all reasoning, state, and execution remain inside the user’s machine boundary.

### Context
- **Platform:** macOS  
- **Agent runtime:** Clawdbot  
- **Model runtime:** Ollama  
- **Boundary:** Local-only  
- **Audience:** Developers, MX practitioners, agent authors, and machine collaborators  

### Problem
Clawdbot’s onboarding flow assumes cloud providers by default. Users who want a **local‑only** agent often get stuck in cloud model menus, gateway errors, or unclear defaults. MX requires explicit boundaries, reproducibility, and machine‑readable metadata — none of which are guaranteed without a formal pattern.

### Forces
- Privacy: keep reasoning on-device  
- Reproducibility: deterministic agent behaviour  
- Clarity: avoid cloud-provider confusion  
- Governance: explicit boundaries and metadata  
- Simplicity: fast, reliable setup  

### Solution
A repeatable pattern that:

1. Installs Clawdbot  
2. Runs onboarding in local‑first mode  
3. Skips cloud model configuration  
4. Starts the gateway explicitly  
5. Binds the agent to an Ollama model  
6. Documents the architecture and boundaries  

### Resulting context
- A fully local agent  
- Predictable gateway endpoint  
- Clear separation of agent runtime and model runtime  
- Reproducible configuration  
- MX‑aligned metadata  

### Consequences

**Positive:**
- Strong privacy  
- Zero cloud dependency  
- Fast iteration  
- Clear governance  

**Negative:**
- No web search unless configured  
- Local models may be slower  
- Manual gateway management on first run  

### Known uses
- MX Bible development  
- Local agent prototyping  
- Offline‑first workflows  

### Related patterns
- `mx.pattern.clawdbot.web-search.brave`  
- `mx.pattern.ollama.model-provenance`  
- `mx.pattern.agent.local-boundary`  

---

## 2. Quick start

```sh
# 1. Install Clawdbot
curl -fsSL https://get.clawd.bot | sh

# 2. Run onboarding
clawdbot onboard
# Choose:
# - "Skip for now" for model provider
# - "Keep current (default)" for cloud model list

# 3. Start the gateway
clawdbot gateway --force

# 4. Bind to Ollama
clawdbot tui
# Press m → Local (Ollama) → choose model → Set as default
```

You now have a fully local agent.

---

## 3. Implementation steps

### Step 1 — Install Clawdbot

```sh
curl -fsSL https://get.clawd.bot | sh
clawdbot --version
```

### Step 2 — Run onboarding

```sh
clawdbot onboard
```

When prompted:

- **Model/Auth Provider → Skip for now**  
- **Default model list → Keep current (default)**  

This avoids cloud configuration.

### Step 3 — Start the gateway

```sh
clawdbot gateway --force
```

Look for:

```
listening on ws://127.0.0.1:18789
```

### Step 4 — Bind to Ollama

```sh
clawdbot tui
```

Inside the TUI:

- Press **m**  
- Select **Local (Ollama)**  
- Choose your model  
- Set as default  

### Step 5 — Interact with the agent

Terminal UI:

```sh
clawdbot tui
```

Dashboard:

```
http://127.0.0.1:18789/?token=...
```

---

## 4. Architecture diagram (SVG)

```svg
<svg width="780" height="420" viewBox="0 0 780 420" xmlns="http://www.w3.org/2000/svg">
  <style>
    .box { fill:#ffffff; stroke:#333333; stroke-width:1.5; rx:8; ry:8; }
    .title { font-family: system-ui, -apple-system, sans-serif; font-size:14px; font-weight:600; fill:#111111; }
    .label { font-family: system-ui, -apple-system, sans-serif; font-size:12px; fill:#333333; }
    .note { font-family: system-ui, -apple-system, sans-serif; font-size:11px; fill:#555555; }
    .arrow { stroke:#555555; stroke-width:1.2; marker-end:url(#arrowhead); fill:none; }
  </style>

  <defs>
    <marker id="arrowhead" markerWidth="8" markerHeight="6" refX="7" refY="3" orient="auto">
      <polygon points="0 0, 8 3, 0 6" fill="#555555" />
    </marker>
  </defs>

  <rect x="40" y="160" width="120" height="100" class="box" />
  <text x="60" y="185" class="title">Human</text>
  <text x="60" y="205" class="label">Developer / Operator</text>

  <rect x="200" y="40" width="540" height="340" fill="none" stroke="#999999" stroke-width="1.5" stroke-dasharray="6 4" rx="12" ry="12" />
  <text x="210" y="60" class="note">macOS machine boundary</text>

  <rect x="230" y="100" width="220" height="90" class="box" />
  <text x="245" y="125" class="title">Clawdbot Gateway</text>

  <rect x="230" y="220" width="220" height="90" class="box" />
  <text x="245" y="245" class="title">Clawdbot Agent Runtime</text>

  <rect x="490" y="220" width="220" height="90" class="box" />
  <text x="505" y="245" class="title">Ollama</text>

  <rect x="490" y="100" width="220" height="90" class="box" />
  <text x="505" y="125" class="title">Channels (optional)</text>

  <line x1="160" y1="210" x2="230" y2="145" class="arrow" />
  <line x1="160" y1="210" x2="230" y2="265" class="arrow" />

  <line x1="340" y1="190" x2="340" y2="220" class="arrow" />
  <line x1="340" y1="310" x2="340" y2="190" class="arrow" />

  <line x1="450" y1="265" x2="490" y2="265" class="arrow" />
  <line x1="340" y1="145" x2="490" y2="145" class="arrow" />
</svg>
```

---

## 5. Governance notes

- **Boundary clarity:** All reasoning stays on-device unless explicitly extended.  
- **Model provenance:** Record the exact Ollama model version.  
- **Co‑authorship:** This pattern is co‑authored by human and machine, consistent with MX principles.  
- **Reproducibility:** The pattern ensures deterministic setup across machines.  

---

If you want, I can also generate a **PDF-ready version**, a **pattern index entry**, or a **companion Quick Start card** for the MX Bible appendix.
