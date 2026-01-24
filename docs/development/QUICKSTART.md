---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "Quick start guide for MX-Gathering developers"
purpose: "development-guide"
keywords: ['machine-experience', 'development', 'infrastructure', 'deployment', 'mx-gathering']
---

# Developer Quick Start Guide

Get up and running with MX-Gathering development in 5 minutes.

## Prerequisites

- Git installed
- Modern web browser (Chrome, Firefox, Safari, or Edge)
- Text editor (VS Code, Sublime, Vim, etc.)
- (Optional) Node.js for local server and testing tools

## 1. Clone the Repository

```bash
git clone https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering.git
cd MX-Gathering
```

## 2. Understand the Structure

```text
MX-Gathering/
├── web/                    # Website files (HTML, CSS, JS)
│   └── index.html          # Main landing page
├── docs/                   # Documentation
│   ├── domains/            # Domain and hosting docs
│   └── development/        # Development guides
├── events/                 # Event templates
├── discussions/            # Discussion archives
├── contributors/           # Contributor resources
├── members/                # Member resources
└── .github/                # GitHub Actions workflows
```

## 3. Run Locally

### Option A: Python (if installed)

```bash
cd web
python3 -m http.server 8080
```

### Option B: Node.js

```bash
npx serve web -p 8080
```

### Option C: PHP

```bash
cd web
php -S localhost:8080
```

### Option D: VS Code Live Server

1. Install "Live Server" extension
2. Right-click `web/index.html`
3. Select "Open with Live Server"

**Access:** <http://localhost:8080>

## 4. Make Your First Change

### Edit the Landing Page

```bash
# Open the main file
code web/index.html  # or your preferred editor

# Make a small change (e.g., update hero text)
# Save the file
# Refresh browser to see changes
```

### Create a Feature Branch

```bash
# Always branch from dev
git checkout dev
git pull origin dev

# Create your feature branch
git checkout -b feature/my-awesome-feature

# Make your changes
# ...

# Commit your changes
git add .
git commit -m "feat: add my awesome feature"

# Push to GitHub
git push origin feature/my-awesome-feature
```

## 5. Create a Pull Request

1. Go to GitHub repository
2. Click "Compare & pull request"
3. Fill in the PR template
4. Target branch: `dev`
5. Request review
6. Wait for automated checks to pass
7. Preview deployment will be automatically created

## Common Development Tasks

### Run Tests Locally

```bash
# Install testing tools (first time only)
npm install -g html-validate pa11y-ci

# Validate HTML
html-validate web/index.html

# Test accessibility
# (requires site to be running on localhost:8080)
pa11y http://localhost:8080
```

### Check for Broken Links

```bash
npm install -g broken-link-checker
blc http://localhost:8080 -ro
```

### Run Lighthouse Audit

```bash
npm install -g @lhci/cli
lhci autorun --collect.url=http://localhost:8080
```

## Development Workflow

### Standard Feature Development

```bash
# 1. Start from dev branch
git checkout dev
git pull origin dev

# 2. Create feature branch
git checkout -b feature/descriptive-name

# 3. Make changes and test locally
# Edit files...
# Test at http://localhost:8080

# 4. Commit changes
git add .
git commit -m "feat: describe your feature"

# 5. Push to GitHub
git push origin feature/descriptive-name

# 6. Create Pull Request
# Go to GitHub and create PR targeting 'dev' branch

# 7. After PR approval and merge
git checkout dev
git pull origin dev

# 8. Delete feature branch
git branch -d feature/descriptive-name
git push origin --delete feature/descriptive-name
```

### Quick Fix

```bash
# For small fixes
git checkout dev
git pull origin dev
git checkout -b fix/issue-description

# Make fix
# ...

# Commit and push
git add .
git commit -m "fix: describe the fix"
git push origin fix/issue-description

# Create PR to dev
```

## Deployment Environments

| Environment | Branch | URL | Purpose |
|-------------|--------|-----|---------|
| Production | `main` | [mx-thegathering.ai](https://mx-thegathering.ai) | Live site |
| Staging | `staging` | [staging.mx-thegathering.ai](https://staging.mx-thegathering.ai) | QA testing |
| Development | `dev` | [dev.mx-thegathering.ai](https://dev.mx-thegathering.ai) | Active development |
| Preview | `feature/*` | Auto-generated | Feature testing |

## Branch Strategy

```text
main (production)
  ↑
  merge from staging
    ↑
  staging (QA)
    ↑
    merge from dev
      ↑
    dev (development)
      ↑
      merge from feature branches
        ↑
      feature/xyz (your work)
```

## Commit Message Convention

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```text
feat: add new feature
fix: fix bug in navigation
docs: update README
style: improve button styling
refactor: simplify header code
test: add integration tests
chore: update dependencies
```

**Examples:**

```bash
git commit -m "feat: add event calendar component"
git commit -m "fix: resolve mobile navigation issue"
git commit -m "docs: add deployment guide"
git commit -m "style: improve responsive design for tablets"
```

## Code Style Guidelines

### HTML

- Use semantic HTML elements (`<header>`, `<main>`, `<nav>`, `<article>`, etc.)
- Include ARIA labels for accessibility
- Validate with html-validate before committing
- Use consistent indentation (2 spaces)

### CSS

- Follow BEM or similar naming convention
- Use CSS custom properties (variables) for theming
- Mobile-first responsive design
- Test across browsers

### JavaScript

- Use modern ES6+ syntax
- Comment complex logic
- No jQuery (use vanilla JS)
- Handle errors gracefully

## Troubleshooting

### Port Already in Use

```bash
# Kill process on port 8080
lsof -ti:8080 | xargs kill -9

# Or use different port
python3 -m http.server 8081
```

### Changes Not Showing

1. Hard refresh browser (Cmd+Shift+R or Ctrl+Shift+R)
2. Clear browser cache
3. Check if you saved the file
4. Verify correct file is being served

### Git Issues

```bash
# Undo local changes
git checkout -- filename

# Discard all local changes
git reset --hard HEAD

# Update from remote
git fetch origin
git merge origin/dev
```

## VS Code Recommended Extensions

- **Live Server** - Local development server
- **HTML CSS Support** - Intellisense for HTML
- **ESLint** - JavaScript linting
- **Prettier** - Code formatting
- **GitLens** - Git integration
- **Path Intellisense** - Autocomplete for file paths

## Getting Help

### Resources

- **Documentation:** [docs/](docs/)
- **Environments Guide:** [docs/development/ENVIRONMENTS.md](ENVIRONMENTS.md)
- **Domain Strategy:** [docs/domains/DOMAIN-STRATEGY.md](../domains/DOMAIN-STRATEGY.md)

### Ask Questions

- **GitHub Discussions:** <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/discussions>
- **Issues:** <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/issues>
- **Email:** <tom.cranstoun@gmail.com>

## Next Steps

1. ✅ Clone repository
2. ✅ Run locally
3. ✅ Make first change
4. Read [ENVIRONMENTS.md](ENVIRONMENTS.md) for full development guide
5. Check [Contributor Guidelines](../../contributors/contribution-guidelines.md)
6. Review [Code of Conduct](../../contributors/code-of-conduct.md)
7. Join [GitHub Discussions](https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/discussions)

---

**Welcome to MX-Gathering development! Happy coding! 🚀**

**Questions?** Open a [GitHub Discussion](https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/discussions)
