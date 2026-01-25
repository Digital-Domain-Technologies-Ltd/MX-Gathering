Absolutely, Tom — I can integrate the **universal metadata checklist** directly into **MX‑STD‑001** as a formal, normative section of the standard. I’ll do this cleanly, without repeating the entire standard, and I’ll place the new material exactly where it belongs: as a **new normative section** titled **“5. Universal Metadata Requirements (MX‑META‑001)”**.

This keeps MX‑STD‑001 coherent, structured, and future‑proof — and it elevates metadata to the constitutional level you intended.

Below is the **updated MX‑STD‑001**, with the new metadata section fully integrated.

---

# **MX‑STD‑001: Machine Experience Standard**

### *Updated with Section 5: Universal Metadata Requirements (MX‑META‑001)*

## **1. Overview**

MX‑STD‑001 defines the structural, semantic, and metadata requirements for interfaces that treat machines as first‑class citizens. It ensures predictable navigation, reliable interpretation, ethical transparency, and accessibility for both humans and AI agents.

## **2. Goals**

- Predictable machine navigation
- Reliable interpretation
- Ethical transparency
- Accessibility for all users
- Interoperability across agents and platforms
- Universal metadata across all asset types

## **3. Scope**

This standard applies to:

- Websites
- Web applications
- Documentation systems
- E‑commerce flows
- Content repositories
- Agent‑facing APIs
- Any digital asset intended for machine consumption

## **4. Core Requirements**

### **4.1 Semantic Structure**

- Semantic HTML (`<main>`, `<section>`, `<article>`, `<nav>`, `<header>`, `<footer>`)
- Predictable heading hierarchy
- Explicit state via `data-*` attributes

### **4.2 Machine‑Readable Metadata**

- JSON‑LD (Schema.org)
- Open Graph
- YAML frontmatter (for markdown systems)
- XMP, EXIF, IPTC, ID3, and other embedded metadata formats

### **4.3 Explicit Intent**

- `data-page-type`
- `data-cta-role`
- Machine‑tagged lists, benefits, formats

### **4.4 Transparency**

- llms.txt
- robots.txt
- Clear agent‑facing documentation

### **4.5 Accessibility**

- WCAG‑aligned
- ARIA where appropriate
- Patterns that serve both humans and machines

---

# **5. Universal Metadata Requirements (MX‑META‑001)**

### *Normative Section — Required for MX Compliance*

Metadata is the context that raw content cannot provide.
To treat machines as first‑class citizens, MX requires **explicit, structured metadata across all asset types**.

This section defines the universal metadata obligations for MX‑aligned systems.

---

## **5.1 Metadata Philosophy (Normative)**

All MX‑aligned assets MUST include metadata that:

- Provides context not present in the content itself
- Supports both human and machine interpretation
- Is explicit, structured, and machine‑parsable
- Is embedded directly in the asset where possible
- Reflects co‑ownership by humans and machine contributors
- Follows open standards (YAML, JSON‑LD, XMP, EXIF, IPTC, ID3, OpenAPI, etc.)

**Metadata is infrastructure, not decoration.**

---

## **5.2 Required Metadata by Asset Type**

### **5.2.1 Markdown / Text Files**

MUST include YAML frontmatter with:

- `title`
- `author`
- `co-author`
- `date`
- `status`
- `version`
- `document-type`
- `purpose`
- `keywords`
- `mx-principles`
- `audience`
- `rights`
- `canonical-url`
- `related-documents`
- `metadata-philosophy`

---

### **5.2.2 HTML Files**

MUST include:

- `<title>`
- `<meta name="description">`
- Open Graph metadata
- JSON‑LD using correct Schema.org type
- `data-page-type`
- `data-mx-version`
- `data-cta-role` (for CTAs)
- `data-resource-type` (for lists)
- Canonical URL
- Semantic structure

---

### **5.2.3 CSS Files**

MUST include a header metadata block with:

- `purpose`
- `author`
- `version`
- `status`
- `dependencies`
- `mx-principles`

---

### **5.2.4 JavaScript Files**

MUST include a header metadata block with:

- `purpose`
- `module-type`
- `side-effects`
- `dependencies`
- `author`
- `version`
- `mx-principles`

---

### **5.2.5 PDF Files**

MUST embed XMP metadata including:

- Title
- Authors
- Co‑ownership
- Subject
- Keywords
- Rights
- Language
- Identifier
- MX custom metadata (`mxVersion`, `documentType`, `principles`, etc.)

---

### **5.2.6 Images**

MUST include EXIF / IPTC / XMP metadata:

- Title
- Description
- Rights
- Creator
- Purpose

---

### **5.2.7 Audio / Video**

MUST include ID3 or XMP metadata:

- Title
- Description
- Transcript (external or embedded)
- Rights
- Creator
- Purpose

---

### **5.2.8 Word / Office Documents**

MUST include:

- Document properties (Title, Subject, Author, Keywords, Category, Status, Version)
- Custom MX metadata fields

---

### **5.2.9 APIs**

MUST include:

- OpenAPI or JSON Schema
- Version
- Title
- Description
- Contact
- License
- Tags
- Explicit machine‑readable intent

---

## **5.3 Repository‑Level Metadata**

Every MX‑aligned repository MUST include:

- `llms.txt`
- `robots.txt`
- `README.md` with YAML frontmatter
- `CONTRIBUTING.md` with metadata
- `LEARNINGS.md`
- `TODO.txt` for machine side‑notices

---

## **5.4 Co‑Ownership Metadata (Normative)**

All MX‑aligned assets MUST declare co‑ownership by:

- **Tom Cranstoun**
- **MX‑Gathering Community**
- **Machine Contributors (including Microsoft Copilot)**

This reflects the collaborative nature of MX practice.

---

## **5.5 Compliance**

An asset is MX‑compliant only if:

- All required metadata is present
- Metadata is structured and machine‑parsable
- Metadata is embedded directly in the asset
- Metadata is accurate, explicit, and non‑ambiguous

---

# **6. Governance**

MX‑STD‑001 is open source, community‑maintained, and version‑controlled.
Changes require proposals, discussion, evidence, and consensus.

---

If you want, I can now generate:

- A **PDF‑ready version** of MX‑STD‑001
- A **metadata validator specification**
- A **CLI tool design** for checking MX compliance
