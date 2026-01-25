Great — I’ll prepare the **metadata validation checklist** you agreed to, fully aligned with the MX Constitution, MX‑STD‑001, and your universal‑metadata philosophy. This gives you a practical tool for your publishing pipeline and for contributors across MX‑Gathering.

---

# **MX Metadata Validation Checklist**

### *A universal checklist for all MX‑aligned assets (HTML, CSS, JS, PDF, images, audio, video, docs)*

This checklist ensures every asset in the MX ecosystem carries the explicit, structured metadata required for machines and humans to interpret it correctly. It reflects the constitutional requirement that **metadata is infrastructure, not decoration**.

---

## **1. Markdown / Text Files (e.g., .md, .txt)**

**Required:**

- YAML frontmatter at the top
- `title`
- `author`
- `co-author` (if applicable)
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

**Validation:**

- Frontmatter parses cleanly
- No missing required fields
- No ambiguous or empty values

---

## **2. HTML Files**

**Required:**

- `<title>`
- `<meta name="description">`
- Open Graph metadata
- JSON‑LD block using correct Schema.org type
- `data-page-type`
- `data-mx-version`
- `data-cta-role` (for CTAs)
- `data-resource-type` (for lists)
- Canonical URL
- Semantic structure (`<main>`, `<section>`, `<article>`, `<nav>`, `<header>`, `<footer>`)

**Validation:**

- JSON‑LD passes schema validation
- No duplicate `<h1>`
- All CTAs have descriptive labels

---

## **3. CSS Files**

**Required:**

- Header comment block with:
  - `purpose`
  - `author`
  - `version`
  - `status`
  - `dependencies`
  - `mx-principles`

**Validation:**

- No orphaned selectors
- No unused classes
- No inline metadata missing

---

## **4. JavaScript Files**

**Required:**

- Header metadata block with:
  - `purpose`
  - `module-type`
  - `side-effects`
  - `dependencies`
  - `author`
  - `version`
  - `mx-principles`

**Validation:**

- No global namespace pollution
- No undocumented side effects

---

## **5. PDF Files**

**Required:**

- XMP metadata block (as we generated)
- Title
- Author(s)
- Co‑ownership
- Subject
- Keywords
- Rights
- Language
- Identifier
- MX custom metadata (`mxVersion`, `documentType`, `principles`, etc.)

**Validation:**

- XMP parses without errors
- PDF/A‑friendly if archival

---

## **6. Images (PNG, JPG, SVG, WebP)**

**Required:**

- EXIF / IPTC / XMP metadata
- Title
- Description
- Alt text (if used in HTML)
- Rights
- Creator
- Purpose

**Validation:**

- No empty EXIF fields
- No missing rights information

---

## **7. Audio / Video Files**

**Required:**

- ID3 or XMP metadata
- Title
- Description
- Transcript (for accessibility)
- Rights
- Creator
- Purpose

**Validation:**

- Metadata embedded, not external
- Transcript stored alongside asset

---

## **8. Word / Office Documents**

**Required:**

- Document properties:
  - Title
  - Subject
  - Author
  - Keywords
  - Category
  - Status
  - Version
- Custom metadata fields for MX:
  - `mxVersion`
  - `documentType`
  - `purpose`
  - `principles`

**Validation:**

- No missing fields
- No conflicting metadata

---

## **9. APIs (OpenAPI, JSON Schema)**

**Required:**

- Version
- Title
- Description
- Contact
- License
- Tags
- Schema definitions
- Explicit machine‑readable intent

**Validation:**

- Schema passes validation
- No undocumented endpoints

---

## **10. Repository‑Level Metadata**

**Required:**

- `llms.txt`
- `robots.txt`
- `README.md` with YAML frontmatter
- `CONTRIBUTING.md` with metadata
- `LEARNINGS.md`
- `TODO.txt` for machine side‑notices

**Validation:**

- All files include metadata
- No missing or ambiguous context

---

## **11. Co‑Ownership Metadata**

Every asset must declare:

- **Tom Cranstoun**
- **MX‑Gathering Community**
- **Machine Contributors (including Microsoft Copilot)**

This ensures the MX ecosystem reflects the collaborative nature of the discipline.

---

## **12. Metadata Philosophy Statement**

Every asset must include (in YAML, XMP, or equivalent):

> Metadata is the context that raw content cannot provide.
> It exists to support both humans and machines.
> Metadata is infrastructure, not decoration.

---

If you want, I can help you turn this into a **PDF‑ready checklist**, or integrate it into the **MX‑STD‑001 standard** as a normative appendix.
