# Contributing to this project

Thank you for considering a contribution.

This project does not accept ad-hoc changes. It accepts **intentional contributions** aligned with the architecture, standards, and long-term continuity of the system.

Contributing here means preserving predictability, security, and recoverability.

---

## Code of Conduct

This project follows **NEØ development standards**.

That implies:

* Respectful and objective communication
* Technical discussions grounded in evidence
* Zero tolerance for hostile or careless behavior

High-reliability systems require professional posture.

---

## Development Model

This repository uses a **main-first** workflow aligned with modern DevSecOps practices.

Principles:

* `main` always represents a recoverable state
* No direct commits to `main`
* All changes enter via Pull Request

### Branching Strategy

* `feature/short-description` for new functionality
* `fix/short-description` for bug fixes
* `experiment/name` for experiments and proofs of concept

Long-lived branches are discouraged.

---

## How to Contribute

### 1. Fork and Clone

1. Fork the repository
2. Clone your fork locally
3. Add the upstream remote:

```bash
git remote add upstream https://github.com/neomello/neo-template
```

---

### 2. Create a Branch

```bash
git checkout -b feature/short-description
# or
git checkout -b fix/short-description
```

---

### 3. Development Guidelines

Non-negotiable rules:

* **Always** follow the standards defined in `standards/`
* **Always** add tests when introducing new functionality
* **Never** commit credentials, private keys, or secrets
* **Always** assess security impact before committing

If something is not documented, assume it must not be changed.

---

### 4. Commits

Commits must be clear, small, and traceable.

Format:

```
type: concise description
```

Accepted types:

* `feat:` new functionality
* `fix:` bug fix
* `docs:` documentation
* `refactor:` refactoring without behavior change
* `chore:` maintenance tasks

Examples:

* `feat: add recovery script`
* `fix: correct input validation`
* `docs: clarify security guidelines`

---

### 5. Pull Requests

Before opening a PR:

1. Ensure all tests pass
2. Update relevant documentation
3. Clearly explain **what changed** and **why**
4. Reference related issues if applicable

PRs without context will not be merged.

---

## Technical Standards

### Formatting

* Indentation follows `.editorconfig`
* Python and Solidity use 4 spaces
* Markdown requires a blank line after headers
* No trailing whitespace
* Always include a final newline

---

### Security

* **Never** commit `.env`, `.key`, `.secret` files
* **Never** expose private keys or credentials
* **Always** use environment variables for sensitive configuration
* **Always** review diffs with a security mindset

Security is not a final step. It is a prerequisite.

---

### Blockchain, Smart Contracts, and AI

* Smart contracts must be backed up before modification
* Private keys must never appear in code or versioned files
* Large AI models should be treated as external artifacts
* Deployment scripts must be reviewed carefully before execution

Mistakes here are incidents, not bugs.

---

## Project Structure

⚠️ **STRUCTURE PROTECTED BY NEØ ARCHITECTURE**

The project layout is intentional.

* Review `.cursorrules`
* Do not rename or move structural directories
* Do not alter core files without architectural justification

Structural changes require consensus.

---

## Pre-Commit Checks

Run before committing:

```bash
git status
git diff
make check-security  # if available
```

Rushed commits create structural debt.

---

## Pull Request Checklist

* [ ] Code follows established standards
* [ ] Tests pass (when applicable)
* [ ] Documentation updated
* [ ] No credentials exposed
* [ ] Commits are clear and scoped
* [ ] Formatting is consistent

---

## Reporting Issues

Use GitHub Issues.

Good issues include:

* Clear title
* Re show steps when reporting bugs
* Relevant environment context
* Concise description

Vague issues slow the system down.

---

## License

By contributing, you agree that your contributions will be licensed under the same license as this project.

---

**Author:** MELLØ
**Protocol:** NEØ

Change is allowed.
Inconsistency is not.
