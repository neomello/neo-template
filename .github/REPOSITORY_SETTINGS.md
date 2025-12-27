# GitHub Repository Settings — Recommendations

**Repository:** [neo-template](https://github.com/neomello/neo-template)

**Purpose:** Template repository for development workspaces

**Last updated:** 2025-12-26

---

## ✅ Essential Settings

### General Settings

1. **Template repository**
   - ✅ **Enable** — Allows users to generate new repos from this template
   - Location: Settings → General → Template repository

2. **Features**
   - ✅ **Issues** — Enable (for bug reports and feature requests)
   - ✅ **Discussions** — Optional (for community Q&A)
   - ✅ **Projects** — Optional (for project management)
   - ✅ **Wiki** — Disable (use README/docs instead)

3. **Pull Requests**
   - ✅ **Allow merge commits** — Enable
   - ✅ **Allow squash merging** — Enable (recommended for clean history)
   - ✅ **Allow rebase merging** — Enable
   - ⚠️ **Automatically delete head branches** — Enable (keeps repo clean)

---

## 🔒 Security Settings

### Code Security and Analysis

1. **Code scanning**
   - ✅ **Enabled** (via `.github/workflows/scorecard.yml`)
   - ✅ **Secret scanning** — Enabled
   - ✅ **Dependabot alerts** — Enabled (via `.github/dependabot.yml`)

2. **Dependency graph**
   - ✅ **Enable** — Allows dependency insights

3. **Private vulnerability reporting**
   - ✅ **Enable** — Allows private security reports

---

## 📋 Branch Protection (if accepting contributions)

### For `main` branch

If you plan to accept external contributions:

1. **Require pull request reviews**
   - ✅ Enable
   - Required approvals: 1
   - Dismiss stale reviews: Enable

2. **Require status checks**
   - ✅ Enable (if using CI/CD)
   - Require branches to be up to date: Enable

3. **Require conversation resolution**
   - ✅ Enable — Ensures all discussions are resolved

4. **Do not allow bypassing**
   - ✅ Enable — Prevents force pushes

---

## 🚫 Settings to Disable (for template)

1. **Require contributors to sign off**
   - ❌ **Disable** — Not needed for template repository
   - Reason: Adds friction, template is for personal use

2. **Allow force pushes**
   - ❌ **Disable** — Prevents accidental history rewrites

3. **Allow deletions**
   - ❌ **Disable** — Protects main branch

---

## Actions Settings

1. **Actions permissions**
   - ✅ **Allow all actions** — For workflows (scorecard, etc.)

2. **Workflow permissions**
   - ✅ **Read and write permissions** — For automated tasks

---

## 📊 Insights & Analytics

1. **Insights**
   - ✅ **Enable** — View repository analytics

2. **Traffic**
   - ✅ **Enable** — See clones, views, referrers

---

## 🎯 Recommended Workflow

### For Template Repository

1. **Enable template repository** ✅
2. **Enable security features** ✅
3. **Disable sign-off requirement** ❌
4. **Enable branch protection** (if accepting PRs)
5. **Keep workflows minimal** (scorecard is enough)

---

## 📝 Current Configuration Status

### ✅ Already Configured

- `.github/secret-scanning.yml` — Secret scanning config
- `.github/dependabot.yml` — Dependency updates
- `.github/workflows/scorecard.yml` — Security analysis
- `.github/FUNDING.yml` — Sponsorship links
- `.gitattributes` — Git file handling

### ⚠️ To Configure Manually

1. **Template repository** — Enable in Settings
2. **Branch protection** — Configure if accepting PRs
3. **Actions permissions** — Verify workflow access

---

## 🔗 References

- [GitHub Template Repositories](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-template-repository)
- [Branch Protection Rules](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-protected-branches)
- [Secret Scanning](https://docs.github.com/en/code-security/secret-scanning)

---

**Author:** MELLØ // NEØ DEV

This configuration ensures the template is secure, discoverable, and easy to use.

