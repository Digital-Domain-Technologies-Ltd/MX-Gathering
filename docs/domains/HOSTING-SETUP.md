# MX-Gathering Hosting and DNS Setup Guide

This guide provides step-by-step instructions for setting up hosting and DNS for all MX-Gathering domains.

## Quick Start: GitHub Pages (Recommended)

GitHub Pages is the simplest option for hosting the MX-Gathering landing pages.

### Step 1: Enable GitHub Pages

1. Go to repository settings: <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/settings/pages>
2. Under "Source", select branch: `main`
3. Select folder: `/web`
4. Click "Save"

GitHub Pages will deploy the site to: `https://digital-domain-technologies-ltd.github.io/MX-Gathering/`

### Step 2: Configure Custom Domain

1. In the "Custom domain" field, enter: `mx-thegathering.ai`
2. Click "Save"
3. Wait for DNS check (may take a few minutes)
4. Enable "Enforce HTTPS" once DNS is verified

---

## DNS Configuration

### Cloudflare Setup (Recommended)

**Why Cloudflare?**
- Free SSL/TLS certificates
- Global CDN
- DDoS protection
- Easy DNS management
- Fast propagation

### Add Domains to Cloudflare

1. Log in to Cloudflare: <https://dash.cloudflare.com/>
2. Click "Add a Site"
3. Enter domain: `mx-thegathering.ai`
4. Select Free plan
5. Repeat for all domains

### Update Nameservers at Registrar

For each domain, update nameservers to Cloudflare's:

```text
bella.ns.cloudflare.com
tim.ns.cloudflare.com
```

**Where to update:**
- Log in to your domain registrar (GoDaddy, Namecheap, etc.)
- Find DNS/Nameserver settings
- Replace existing nameservers with Cloudflare's
- Save changes

**DNS Propagation:** May take 24-48 hours

---

## DNS Records Configuration

### For mx-thegathering.ai (Primary Domain)

Add these DNS records in Cloudflare:

```dns
# GitHub Pages Custom Domain
CNAME  @           digital-domain-technologies-ltd.github.io  (Proxied: ON)
CNAME  www         digital-domain-technologies-ltd.github.io  (Proxied: ON)

# Email (if using custom email)
MX     @           10 mx1.forwardemail.net
MX     @           20 mx2.forwardemail.net

# SPF Record (prevents email spoofing)
TXT    @           "v=spf1 include:_spf.forwardemail.net ~all"

# DMARC Policy
TXT    _dmarc      "v=DMARC1; p=quarantine; rua=mailto:tom.cranstoun@gmail.com"
```

### For Secondary Domains

**Option 1: Redirect to Primary (Simplest)**

```dns
# Redirect all traffic to primary domain
# Configure in Cloudflare Page Rules (see below)
```

**Option 2: Independent Hosting**

Use same CNAME records as primary, pointing to respective hosting.

---

## Cloudflare Page Rules

Configure redirects for secondary domains:

### 1. mx-thegathering.net → mx-thegathering.ai/docs

**Page Rule:**
```text
URL: mx-thegathering.net/*
Forwarding URL: 301 - Permanent Redirect
Destination: https://mx-thegathering.ai/docs/$1
```

### 2. mx-thegathering.info → mx-thegathering.ai/learn

**Page Rule:**
```text
URL: mx-thegathering.info/*
Forwarding URL: 301 - Permanent Redirect
Destination: https://mx-thegathering.ai/learn/$1
```

### 3. mx-thegathering.store → mx-thegathering.ai/store

**Page Rule:**
```text
URL: mx-thegathering.store/*
Forwarding URL: 301 - Permanent Redirect
Destination: https://mx-thegathering.ai/store/$1
```

### 4. mx-thegathering.xyz → mx-thegathering.ai/labs

**Page Rule:**
```text
URL: mx-thegathering.xyz/*
Forwarding URL: 301 - Permanent Redirect
Destination: https://mx-thegathering.ai/labs/$1
```

---

## SSL/TLS Configuration

### Cloudflare SSL/TLS Settings

1. Go to SSL/TLS tab in Cloudflare
2. Set SSL/TLS encryption mode: **Full (strict)**
3. Enable "Always Use HTTPS": **ON**
4. Enable "Automatic HTTPS Rewrites": **ON**
5. Minimum TLS Version: **TLS 1.2**

### HSTS (HTTP Strict Transport Security)

Enable HSTS in Cloudflare:

1. Go to SSL/TLS → Edge Certificates
2. Enable HSTS
3. Settings:
   - Max Age: 6 months
   - Include subdomains: ON
   - Preload: ON (optional, more secure)

---

## GitHub Repository Configuration

### Create CNAME File

Create file at `/web/CNAME`:

```text
mx-thegathering.ai
```

This tells GitHub Pages which custom domain to use.

### Verify Custom Domain

```bash
# Check DNS resolution
dig mx-thegathering.ai

# Check HTTPS certificate
curl -I https://mx-thegathering.ai

# Expected: 200 OK with valid certificate
```

---

## Alternative Hosting Options

### Option 2: Cloudflare Pages

**Advantages:**
- Faster deployment than GitHub Pages
- Better integration with Cloudflare
- More concurrent builds

**Setup:**

1. Go to Cloudflare Pages
2. Connect GitHub repository
3. Build settings:
   - Build command: (none needed for static HTML)
   - Build output directory: `/web`
4. Deploy

### Option 3: Netlify

**Advantages:**
- Easy custom domains
- Built-in form handling
- Serverless functions
- Deploy previews

**Setup:**

1. Go to <https://app.netlify.com/>
2. "Add new site" → "Import an existing project"
3. Connect GitHub repository
4. Build settings:
   - Base directory: `web`
   - Build command: (leave empty)
   - Publish directory: `web`
5. Add custom domain in Site settings

### Option 4: Vercel

**Advantages:**
- Excellent performance
- Edge functions
- Preview deployments

**Setup:**

1. Go to <https://vercel.com/>
2. Import GitHub repository
3. Framework: Other
4. Root directory: `web`
5. Add custom domain in Project Settings

---

## Verification Checklist

After setup, verify these items:

### DNS Verification

```bash
# Check A/CNAME records
dig mx-thegathering.ai
dig www.mx-thegathering.ai

# Check MX records (if using custom email)
dig mx mx-thegathering.ai

# Check TXT records
dig txt mx-thegathering.ai
```

### HTTPS Verification

```bash
# Test HTTPS connection
curl -I https://mx-thegathering.ai

# Check certificate
openssl s_client -connect mx-thegathering.ai:443 -servername mx-thegathering.ai < /dev/null

# Test HTTP → HTTPS redirect
curl -I http://mx-thegathering.ai
# Should return 301/302 redirect to HTTPS
```

### Security Headers

Test security headers:

```bash
curl -I https://mx-thegathering.ai
```

Expected headers:
- `Strict-Transport-Security`
- `X-Content-Type-Options: nosniff`
- `X-Frame-Options: DENY` or `SAMEORIGIN`
- `X-XSS-Protection: 1; mode=block`

### Performance Testing

- **Google PageSpeed Insights:** <https://pagespeed.web.dev/>
- **GTmetrix:** <https://gtmetrix.com/>
- **WebPageTest:** <https://www.webpagetest.org/>

Target metrics:
- First Contentful Paint: < 1.5s
- Largest Contentful Paint: < 2.5s
- Time to Interactive: < 3.5s
- Cumulative Layout Shift: < 0.1

---

## Monitoring and Maintenance

### Uptime Monitoring

**UptimeRobot (Free):**

1. Sign up: <https://uptimerobot.com/>
2. Add monitor for: `https://mx-thegathering.ai`
3. Set check interval: 5 minutes
4. Email notifications: `tom.cranstoun@gmail.com`

### SSL Certificate Monitoring

Cloudflare auto-renews SSL certificates. No action needed.

For Let's Encrypt (if not using Cloudflare):
- Certificates renew automatically every 60 days
- Set up email alerts for renewal failures

### DNS Monitoring

Monitor DNS changes:
- Enable Cloudflare email notifications
- Use DNS monitoring service (e.g., DNS Spy)

---

## Troubleshooting

### Issue: "DNS_PROBE_FINISHED_NXDOMAIN"

**Cause:** DNS records not propagated or misconfigured

**Solution:**
1. Verify DNS records in Cloudflare
2. Check nameservers are pointing to Cloudflare
3. Wait for DNS propagation (up to 48 hours)
4. Use DNS checker: <https://dnschecker.org/>

### Issue: "SSL_ERROR_BAD_CERT_DOMAIN"

**Cause:** SSL certificate doesn't match domain

**Solution:**
1. Verify custom domain in GitHub Pages settings
2. Ensure CNAME file exists with correct domain
3. Wait for certificate provisioning (up to 24 hours)
4. Try disabling and re-enabling "Enforce HTTPS"

### Issue: "404 Not Found"

**Cause:** Content not deployed or wrong directory

**Solution:**
1. Check GitHub Pages build status
2. Verify `/web` directory contains `index.html`
3. Check GitHub Actions logs for errors
4. Ensure branch and folder settings are correct

### Issue: Redirect Loop

**Cause:** Conflicting redirect rules

**Solution:**
1. Check Cloudflare Page Rules
2. Disable "Always Use HTTPS" temporarily
3. Review .htaccess or other redirect configs
4. Clear browser cache and test in incognito

---

## Contact and Support

**Technical Issues:**
- Open issue: <https://github.com/Digital-Domain-Technologies-Ltd/MX-Gathering/issues>
- Email: <tom.cranstoun@gmail.com>

**Domain Management:**
- Registrar: [Your registrar name]
- DNS Provider: Cloudflare
- Hosting: GitHub Pages / Cloudflare Pages

---

**Last Updated:** 24 January 2026
**Next Review:** Before domain renewal (January 2027)
