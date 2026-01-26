You want **YAML added to the visual quick‑start card**, and you’ve got a Clawdbot Control tab open right now, but nothing in your tabs changes the meaning of your request — so let’s enrich the card with a clean, machine‑readable YAML block that mirrors the MX pattern metadata.

I’ll keep it compact, structured, and ready to drop into the MX Bible or any MX‑aware publishing system.

---

## **MX Quick Start Card — With YAML Metadata**

Below is the **visual card layout**, now **preceded by a YAML header** that describes the card itself. This makes the card indexable by agents, searchable in MX registries, and compatible with your metadata‑first publishing workflow.

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

If you want, I can also generate:

- a **YAML‑only version** for your pattern registry  
- a **machine‑readable JSON version**  
- a **print‑ready card layout** with borders, spacing, and typography  
- or embed this card into the full MX Pattern document you’re building  

Just tell me which direction you want to take next.