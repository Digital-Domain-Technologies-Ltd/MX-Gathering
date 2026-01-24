---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "Git hooks for MX-Gathering repository to enforce AI-Friendly HTML patterns"
purpose: "documentation"
keywords: [git-hooks, validation, html, mx-patterns, quality-control]
---

# MX-Gathering Git Hooks

Git hooks that enforce Machine Experience patterns in this repository.

## Available Hooks

### pre-commit

Validates HTML files against AI-Friendly HTML Guide patterns (Appendix D) before allowing commits.

**What it checks:**

- ✓ Schema.org JSON-LD structured data presence
- ✓ Explicit state with data-* attributes
- ✓ Semantic HTML elements (`<main>`, `<article>`, `<section>`)
- ✓ ARIA attributes for accessibility
- ✓ Language attribute on `<html>` element
- ✓ Proper meta tags (charset, viewport)
- ✓ Skip-to-content link for accessibility

**Prevents:**

- Committing HTML files without machine-readable metadata
- Forgetting to add explicit state attributes
- Missing semantic structure
- Poor accessibility implementation

## Installation

### Option 1: Automatic Setup

From the repository root:

```bash
# Set git hooks path to .githooks directory
git config core.hooksPath .githooks

# Verify it's set correctly
git config core.hooksPath
# Should output: .githooks
```

### Option 2: Manual Setup

Copy the hook to your local git hooks directory:

```bash
# From repository root
cp .githooks/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
```

### Option 3: Symlink (Advanced)

Create a symlink to always use the latest version:

```bash
# From repository root
ln -sf ../../.githooks/pre-commit .git/hooks/pre-commit
```

## Usage

Once installed, the hook runs automatically on every commit attempt.

**Example successful commit:**

```bash
git add web/about.html
git commit -m "Update about page"

# Output:
# MX-Gathering Pre-Commit Hook
# Validating HTML files against AI-Friendly HTML Guide patterns...
#
# Checking: web/about.html
#   ✓ All checks passed
#
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# ✓ All HTML files follow MX patterns
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

**Example failed commit:**

```bash
git add web/bad-page.html
git commit -m "Add new page"

# Output:
# MX-Gathering Pre-Commit Hook
# Validating HTML files against AI-Friendly HTML Guide patterns...
#
# Checking: web/bad-page.html
# Errors:
#   ✗ No data-* attributes found for explicit state
#   ✗ Missing lang attribute on <html> element
# Warnings:
#   ⚠ Missing Schema.org JSON-LD structured data
#   ⚠ Missing <main> semantic element
#
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# HTML validation failed!
#
# [... helpful error message ...]
#
# Reference: packages/shared-appendices/appendix-d-ai-friendly-html-guide.md
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

## Bypassing the Hook

**Not recommended**, but if you need to commit without validation:

```bash
git commit --no-verify -m "Your commit message"
```

**When to bypass:**

- Work-in-progress commits during development
- Emergency fixes that need immediate deployment
- You've manually verified the HTML follows all patterns

**Never bypass for:**

- Production deployments
- About/landing pages
- Any user-facing HTML

## Testing the Hook

Test the hook without committing:

```bash
# Stage an HTML file
git add web/test.html

# Run the hook manually
.githooks/pre-commit

# Check exit code
echo $?
# 0 = passed, 1 = failed
```

## Customising the Hook

The hook script is located at `.githooks/pre-commit`. To modify:

1. Edit `.githooks/pre-commit`
2. Test your changes with manual execution
3. Commit the updated hook script
4. Other contributors get the update automatically (if using Option 1)

## Why This Matters

This hook enforces the convergence principle:

**Without the hook:**
- Easy to forget data-* attributes
- Might skip Schema.org structured data
- Could miss accessibility requirements
- Inconsistent implementation across pages

**With the hook:**
- Every HTML commit is validated
- Patterns become habitual
- Quality is consistent
- AI agents can reliably parse all pages

## For AI Assistants

When creating or modifying HTML files in this repository:

1. **Always** include Schema.org JSON-LD structured data
2. **Always** add explicit state with data-* attributes
3. **Always** use semantic HTML elements
4. **Always** include ARIA attributes for accessibility
5. **Always** reference Appendix D patterns

If the pre-commit hook fails, it means you've forgotten one of these requirements. Fix the issues before committing.

## Troubleshooting

**Hook doesn't run:**

```bash
# Check hooks path
git config core.hooksPath

# Should output: .githooks
# If not, run installation again
```

**Permission denied:**

```bash
# Make hook executable
chmod +x .githooks/pre-commit
```

**Hook runs but doesn't detect issues:**

```bash
# Verify you're in the right directory
pwd
# Should be in MX-Gathering repository root

# Check hook is being executed
bash -x .githooks/pre-commit
```

## Reference

- [AI-Friendly HTML Guide](../packages/shared-appendices/appendix-d-ai-friendly-html-guide.md) - Complete pattern documentation
- [Appendix L](../packages/shared-appendices/appendix-l-proposed-ai-metadata-patterns.md) - Metadata specifications
- [Git Hooks Documentation](https://git-scm.com/docs/githooks) - Official git hooks reference

---

**Last Updated:** 24 January 2026

**For AI Assistants:** This hook prevents the mistake of creating HTML files without MX patterns. If it fails, review Appendix D and add the missing patterns before committing.
