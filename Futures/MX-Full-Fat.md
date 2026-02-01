Got you—let’s slot the architecture diagram **into the same full pattern document**, right after the embedded Quick Start Card. Here’s the updated section you can paste straight into the MX Bible.

```markdown
# MX Pattern: Clawdbot Local Agent on macOS

This pattern defines how to run **Clawdbot** as a **local‑only agent** on macOS, using **Ollama** as the model runtime. It is designed for MX practitioners who want a private, reproducible, machine‑readable agent environment with clear boundaries and governance.

---

## Embedded Quick Start Card

```yaml
card:
  id: mx.card.clawdbot.local-agent.macos.quickstart
  pattern: mx.pattern.clawdbot.local-agent.macos
  title: "Clawdbot Local Agent on macOS — Quick Start"
  version: "1.0.0"
  authors:
    - "Tom Cranstoun"
    - "Microsoft Copilot"
  purpose: "Fast reference card for running a local-only Clawdbot agent on macOS using Ollama."
  boundary: "local-only"
  tags:
    - mx
    - quickstart
    - clawdbot
    - ollama
    - macos
    - agents
  last_updated: "2026-01-25"
```

```markdown
┌──────────────────────────────────────────────────────────────┐
│ 🦞 **MX Quick Start: Clawdbot Local Agent on macOS**          │
│ Local‑only agent runtime using Clawdbot + Ollama              │
├──────────────────────────────────────────────────────────────┤

│ **1. Install Clawdbot**                                       │
│   curl -fsSL https://get.clawd.bot | sh                       │
│   clawdbot --version                                          │
│                                                               │
│ **2. Run Onboarding**                                         │
│   clawdbot onboard                                            │
│   → Model/Auth Provider: *Skip for now*                       │
│   → Default model list: *Keep current (default)*              │
│                                                               │
│ **3. Start the Gateway**                                      │
│   clawdbot gateway --force                                    │
│   Expect: ws://127.0.0.1:18789                                │
│                                                               │
│ **4. Bind to Ollama**                                         │
│   clawdbot tui                                                │
│   Press **m** → Local (Ollama) → choose model → Set default   │
│                                                               │
│ **5. Use Your Agent**                                         │
│   Terminal UI: clawdbot tui                                   │
│   Dashboard: http://127.0.0.1:18789/?token=…                  │
├──────────────────────────────────────────────────────────────┤

│ **Boundary Summary**                                          │
│   • Reasoning: Local                                          │
│   • Model: Ollama                                             │
│   • Network: None required                                    │
│   • Cloud: Off by default                                     │
│                                                               │
│ **Pattern ID**                                                │
│   mx.pattern.clawdbot.local-agent.macos@1.0.0                 │
└──────────────────────────────────────────────────────────────┘
```

---

## Architecture diagram

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

  <!-- Human -->
  <rect x="40" y="160" width="120" height="100" class="box" />
  <text x="60" y="185" class="title">Human</text>
  <text x="60" y="205" class="label">Developer / Operator</text>
  <text x="60" y="225" class="note">Terminal, Browser,</text>
  <text x="60" y="240" class="note">Messaging apps</text>

  <!-- Mac boundary -->
  <rect x="200" y="40" width="540" height="340" fill="none" stroke="#999999" stroke-width="1.5" stroke-dasharray="6 4" rx="12" ry="12" />
  <text x="210" y="60" class="note">macOS machine boundary</text>

  <!-- Clawdbot Gateway -->
  <rect x="230" y="100" width="220" height="90" class="box" />
  <text x="245" y="125" class="title">Clawdbot Gateway</text>
  <text x="245" y="145" class="label">ws://127.0.0.1:18789</text>
  <text x="245" y="165" class="note">WebSocket + Control UI</text>

  <!-- Agent Runtime -->
  <rect x="230" y="220" width="220" height="90" class="box" />
  <text x="245" y="245" class="title">Clawdbot Agent Runtime</text>
  <text x="245" y="265" class="label">agent: main</text>
  <text x="245" y="285" class="note">Tools, memory, skills</text>

  <!-- Ollama -->
  <rect x="490" y="220" width="220" height="90" class="box" />
  <text x="505" y="245" class="title">Ollama</text>
  <text x="505" y="265" class="label">local/llama3 (example)</text>
  <text x="505" y="285" class="note">Local model runtime</text>

  <!-- Optional channels -->
  <rect x="490" y="100" width="220" height="90" class="box" />
  <text x="505" y="125" class="title">Channels (optional)</text>
  <text x="505" y="145" class="label">WhatsApp, Telegram, iMessage</text>
  <text x="505" y="165" class="note">Bound via Clawdbot</text>

  <!-- Arrows: Human -> Gateway / Agent -->
  <line x1="160" y1="210" x2="230" y2="145" class="arrow" />
  <line x1="160" y1="210" x2="230" y2="265" class="arrow" />

  <!-- Arrows: Gateway <-> Agent -->
  <line x1="340" y1="190" x2="340" y2="220" class="arrow" />
  <line x1="340" y1="310" x2="340" y2="190" class="arrow" />

  <!-- Arrows: Agent <-> Ollama -->
  <line x1="450" y1="265" x2="490" y2="265" class="arrow" />

  <!-- Arrows: Gateway <-> Channels -->
  <line x1="340" y1="145" x2="490" y2="145" class="arrow" />
</svg>
```

From here, your next section can continue with `## 1. Pattern intent` exactly as you already have it.

If you want a second diagram later—for example, one that shows adding Brave web search or channels as separate MX extensions—we can layer that in as a sibling “Extended architecture” section.
