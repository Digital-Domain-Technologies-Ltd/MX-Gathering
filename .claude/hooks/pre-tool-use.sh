#!/bin/bash

# Pre-tool-use hook for MX-Gathering repository
# Validates HTML files follow AI-Friendly HTML Guide patterns

# Get the tool being used and file path from environment
TOOL_NAME="${CLAUDE_TOOL_NAME:-}"
FILE_PATH="${CLAUDE_TOOL_PARAM_file_path:-}"

# Also check other path parameters
if [[ -z "$FILE_PATH" ]]; then
    FILE_PATH="${CLAUDE_TOOL_PARAM_notebook_path:-}"
fi
if [[ -z "$FILE_PATH" ]]; then
    FILE_PATH="${CLAUDE_TOOL_PARAM_path:-}"
fi

# HTML VALIDATION: Detect HTML file operations
# Remind about AI-Friendly HTML Guide patterns (Appendix D)
if [[ "$TOOL_NAME" == "Edit" ]] || [[ "$TOOL_NAME" == "Write" ]]; then
    if [[ "$FILE_PATH" =~ \.html$ ]]; then
        echo "🤖 MX-GATHERING HTML REMINDER: Creating/editing HTML for MX platform"
        echo ""
        echo "CRITICAL: Follow AI-Friendly HTML Guide patterns (Appendix D)"
        echo ""
        echo "Required patterns:"
        echo "  ✓ Schema.org JSON-LD structured data"
        echo "  ✓ Explicit state with data-* attributes"
        echo "  ✓ Semantic HTML elements (<main>, <article>, <section>)"
        echo "  ✓ ARIA attributes for accessibility"
        echo "  ✓ Language attribute on <html> element"
        echo "  ✓ Meta tags (charset, viewport)"
        echo "  ✓ Skip-to-content link"
        echo ""
        echo "Reference: https://github.com/Digital-Domain-Technologies-Ltd/MX-hub/blob/main/packages/shared-appendices/appendix-d-ai-friendly-html-guide.md"
        echo ""
        echo "After editing, the pre-commit hook will validate these patterns."
        echo "Hook location: .githooks/pre-commit"
        echo ""
        # Don't block - just inform
    fi
fi

# MARKDOWN WORKFLOW CHECK: Detect markdown file operations
# Remind about YAML frontmatter requirement
if [[ "$TOOL_NAME" == "Edit" ]] || [[ "$TOOL_NAME" == "Write" ]]; then
    if [[ "$FILE_PATH" =~ \.md$ ]]; then
        echo "📝 MARKDOWN WORKFLOW REMINDER: Editing markdown file"
        echo ""
        echo "MANDATORY: All markdown files MUST include YAML frontmatter"
        echo ""
        echo "Required fields:"
        echo "  - author: \"Name\""
        echo "  - date: \"YYYY-MM-DD\""
        echo "  - description: \"Brief summary\""
        echo "  - purpose: \"documentation\" (or template/guide/etc.)"
        echo "  - keywords: [list, of, topics]"
        echo ""
        echo "Reference: CLAUDE.md - YAML Frontmatter Requirement section"
        echo ""
        # Don't block - just inform
    fi
fi

# Allow operation to proceed
exit 0
