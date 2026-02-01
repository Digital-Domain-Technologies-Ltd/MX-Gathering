---
author: "Tom Cranstoun"
date: "2026-01-24"
description: "Domain portfolio strategy for mx-thegathering domains"
purpose: "infrastructure-documentation"
keywords: ['hosting', 'machine-experience', 'domains', 'cloudflare', 'dns', 'mx-gathering']
---

# MX-Gathering Domain Strategy

This document outlines the domain portfolio strategy for MX-Gathering community resources.

## Domain Portfolio

### Primary Domain: mx-thegathering.ai

**Purpose:** Main community hub and entry point

**Registration:** 2-year term (January 2026 - January 2028)
**Annual Renewal:** £239.98

**Primary Uses:**

- Community landing page and portal
- Event calendar and registration
- Discussion forum integration
- Member resource directory
- Blog and thought leadership content
- Newsletter signup

**Technical Setup:**

- Full domain protection enabled (£0.67/month)
- HTTPS required (SSL/TLS certificate)
- CDN recommended for global performance

---

### Secondary Domains

#### mx-thegathering.net

**Purpose:** Technical resources and developer documentation

**Annual Renewal:** £19.97

**Content:**

- API documentation
- Code examples and patterns
- Developer guides
- Integration tutorials
- Technical blog

**Redirect Strategy:** Can operate independently or redirect to .ai/docs

---

#### mx-thegathering.info

**Purpose:** Educational resources and knowledge base

**Annual Renewal:** £32.99

**Content:**

- Getting started guides
- Implementation checklists
- FAQs and help center
- Resource library
- Tutorial videos
- Best practices

**Redirect Strategy:** Can operate independently or redirect to .ai/learn

---

#### mx-thegathering.store

**Purpose:** Commerce and premium content

**Annual Renewal:** £74.97

**Content:**

- Book sales (MX-Bible, MX-Handbook)
- Premium resources and templates
- Training materials
- Community merchandise
- Event tickets

**Redirect Strategy:** Operate independently with ecommerce platform

---

#### mx-thegathering.xyz

**Purpose:** Experimental features and sandbox

**Annual Renewal:** £17.73

**Content:**

- Beta feature testing
- Developer playground
- Experimental tools
- Community experiments
- Prototype demonstrations

**Redirect Strategy:** Operate independently, clearly marked as experimental

---

## DNS Configuration

### Recommended DNS Provider

- Cloudflare (recommended for MX-Gathering)
- AWS Route 53
- Google Cloud DNS

### Standard DNS Records

```dns
# Primary domain (mx-thegathering.ai)
@         A      <hosting-ip-address>
www       CNAME  mx-thegathering.ai.
_dmarc    TXT    "v=DMARC1; p=quarantine; rua=mailto:tom.cranstoun@gmail.com"

# Secondary domains (redirect or independent hosting)
@         A      <hosting-ip-address>
www       CNAME  <domain>
```

### SSL/TLS Certificates

**Options:**

1. **Let's Encrypt** (free, automated renewal)
2. **Cloudflare Universal SSL** (free with Cloudflare)
3. **Commercial Certificate** (if required for compliance)

**Implementation:**

- Enable HTTPS redirect (HTTP → HTTPS)
- Enable HSTS (HTTP Strict Transport Security)
- Use TLS 1.2+ only

---

## Hosting Strategy

### Option 1: Static Site Hosting (Recommended for Launch)

**Providers:**

- **GitHub Pages** (free, integrates with MX-Gathering repo)
- **Cloudflare Pages** (free, fast global CDN)
- **Netlify** (free tier, easy deployment)
- **Vercel** (free tier, excellent performance)

**Advantages:**

- Zero server management
- Automatic HTTPS
- Global CDN distribution
- Version controlled via Git
- Free for open-source projects

**Recommended:** GitHub Pages with custom domain

---

### Option 2: Dynamic Site Hosting

**For future features requiring:**

- User authentication
- Dynamic content
- Database integration
- Server-side processing

**Providers:**

- **Cloudflare Workers** (serverless, edge computing)
- **AWS Lambda + API Gateway** (serverless functions)
- **DigitalOcean App Platform** (managed hosting)
- **Railway** (simple deployment)

---

## Implementation Roadmap

### Phase 1: Foundation (Week 1-2)

- [ ] Configure DNS for all domains
- [ ] Deploy primary landing page to mx-thegathering.ai
- [ ] Set up SSL/TLS certificates
- [ ] Configure redirects for secondary domains
- [ ] Test all domain configurations

### Phase 2: Content Population (Week 3-4)

- [ ] Launch main community portal (mx-thegathering.ai)
- [ ] Deploy technical documentation (mx-thegathering.net)
- [ ] Deploy educational resources (mx-thegathering.info)
- [ ] Set up placeholder pages for .store and .xyz

### Phase 3: Feature Expansion (Month 2+)

- [ ] Integrate event calendar
- [ ] Set up discussion forum (Discourse/GitHub Discussions)
- [ ] Launch blog/thought leadership section
- [ ] Enable newsletter subscriptions
- [ ] Launch ecommerce (mx-thegathering.store)

---

## Redirect Strategy

### Approach 1: All Domains → Primary (Simplest)

```nginx
# Redirect all secondary domains to primary
server {
    server_name mx-thegathering.net mx-thegathering.info mx-thegathering.store mx-thegathering.xyz;
    return 301 https://mx-thegathering.ai$request_uri;
}
```

**Advantages:**

- Simplest to maintain
- Consolidated SEO authority
- Single source of content

**Disadvantages:**

- Loses potential for specialized content
- Wastes premium domain purchases

---

### Approach 2: Subdirectory Mapping (Recommended)

```nginx
# Map domains to subdirectories on primary
mx-thegathering.net     → mx-thegathering.ai/docs/
mx-thegathering.info    → mx-thegathering.ai/learn/
mx-thegathering.store   → mx-thegathering.ai/store/
mx-thegathering.xyz     → mx-thegathering.ai/labs/
```

**Advantages:**

- Dedicated content areas
- Memorable URLs for specific purposes
- Flexible future migration

---

### Approach 3: Independent Sites (Maximum Flexibility)

Each domain hosts independent content:

- mx-thegathering.ai - Community hub
- mx-thegathering.net - Technical docs (separate site)
- mx-thegathering.info - Knowledge base (separate site)
- mx-thegathering.store - Ecommerce (separate platform)
- mx-thegathering.xyz - Experimental features (separate site)

**Advantages:**

- Maximum flexibility
- Specialized platforms for each purpose
- Independent scaling

**Disadvantages:**

- Higher maintenance overhead
- Fragmented user experience
- More complex authentication

---

## Analytics and Monitoring

### Recommended Tools

**Privacy-Focused Analytics:**

- Plausible Analytics (recommended)
- Fathom Analytics
- Simple Analytics

**Traditional Analytics:**

- Google Analytics 4 (if needed)
- Matomo (self-hosted option)

**Uptime Monitoring:**

- UptimeRobot (free tier available)
- Pingdom
- StatusCake

---

## Security Considerations

### Essential Security Measures

1. **DNS Security:**
   - Enable DNSSEC
   - Use registry lock for premium domains
   - Monitor DNS changes

2. **Web Security:**
   - Implement Content Security Policy (CSP)
   - Enable HSTS with preloading
   - Use Subresource Integrity (SRI) for external resources
   - Regular security audits

3. **DDoS Protection:**
   - Cloudflare DDoS protection (recommended)
   - AWS Shield (if using AWS)

4. **Access Control:**
   - Strong domain registrar password
   - Two-factor authentication (2FA) enabled
   - Limited admin access

---

## Budget Summary

### Annual Costs

| Domain | Annual Cost | Purpose |
|--------|-------------|---------|
| mx-thegathering.ai | £239.98 | Primary hub |
| mx-thegathering.net | £19.97 | Technical docs |
| mx-thegathering.xyz | £17.73 | Experimental |
| mx-thegathering.info | £32.99 | Educational |
| mx-thegathering.store | £74.97 | Commerce |
| Full Domain Protection (5×) | £40.20 | Security |
| **Total Annual** | **£425.84** | |

### Hosting Costs (Estimated)

| Service | Cost | Purpose |
|---------|------|---------|
| GitHub Pages | Free | Static hosting |
| Cloudflare (Free tier) | Free | CDN + SSL |
| Plausible Analytics | €9/month | Privacy-focused analytics |
| **Monthly Total** | **~€9 (~£8)** | |
| **Annual Hosting** | **~£96** | |

**Combined Annual Budget:** ~£522

---

## Contact and Support

**Domain Management:** Tom Cranstoun
**Email:** <tom.cranstoun@gmail.com>
**Technical Issues:** Open issue in [MX-Gathering repository](https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering)

---

**Last Updated:** 24 January 2026
**Next Review:** July 2026
