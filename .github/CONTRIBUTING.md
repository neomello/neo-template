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
# Contributing

Thank you for considering contributing to this project! This document provides guidelines and standards for contributions.

<iframe src="https://github.com/sponsors/neomello/card" title="Sponsor neomello" height="225" width="600" style="border: 0;"></iframe>

## Code of Conduct

This project follows NEØ development standards. Please maintain a respectful and professional environment in all interactions.

## Development Process

This project uses a `main`-based branching model aligned with modern DevSecOps practices.

-  All new features and fixes are merged into the `main` branch via Pull Request
-  Use descriptive branches for features (`feature/feature-name`)
-  Use branches for experiments (`experiment/name`)

## How to Contribute

### 1. Fork and Clone

1.  Fork the repository
2.  Clone your fork
3.  Add upstream: `git remote add upstream <original-repo-url>`

### 2. Create Branch

```bash
git checkout -b feature/feature-name
# or
git checkout -b fix/bug-description
```

### 3. Development

-  **Always** follow established code standards
-  **Always** add tests if adding new functionality
-  **Never** commit credentials or private keys
-  **Always** verify security before committing

Non-negotiable rules:

* **Always** follow the standards defined in `standards/`
* **Always** add tests when introducing new functionality
* **Never** commit credentials, private keys, or secrets
* **Always** assess security impact before committing
-  Use descriptive commit messages
-  Follow the pattern: `type: brief description`
-  Examples:
-  `feat: add new feature`
-  `fix: fix specific bug`
-  `docs: update documentation`

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
1.  Ensure all tests pass
2.  Update documentation if necessary
3.  Clearly describe changes in the PR
4.  Reference related issues if applicable

## Code Standards

### Formatting

-  Use 2 spaces for indentation (as per `.editorconfig`)
-  Use 4 spaces for Python/Solidity
-  **ALWAYS** add blank line after Markdown headers
-  Remove trailing whitespace
-  Add final newline

### Security

-  **NEVER** commit `.env`, `.key`, `.secret` files
-  **NEVER** expose private keys or credentials
-  **ALWAYS** use environment variables for sensitive configurations
-  **ALWAYS** verify security before committing

### Blockchain/Solidity/AI

-  **Solidity Contracts**: Always maintain backups before modifying
-  **Private Keys**: NEVER store in code or versioned files
-  **AI Models**: Protect large model files
-  **Deploy Scripts**: Always verify before executing in production

## Project Structure

### Protected Architecture

STRUCTURE PROTECTED BY NEØ ARCHITECTURE

Consult `.cursorrules` for the protected project structure.

**NEVER** modify folders or rename files without authorization.

## Pre-Commit Checks

Run these checks before committing:

```bash
# Check git status
git status

# Check changes
git diff

# Check security (if available)
make check-security
```

## Pull Request Checklist

-  [ ] Code follows established standards
-  [ ] Tests pass (if applicable)
-  [ ] Documentation updated
-  [ ] No credentials or private keys exposed
-  [ ] Descriptive commit messages
-  [ ] Correct formatting (blank line after headers)

## Reporting Issues

Use GitHub Issues to report bugs or suggest features:

-  Use descriptive titles
-  Provide steps to reproduce (if bug)
-  Include environment information when relevant
-  Be clear and objective

## Questions?

If you have questions about how to contribute, open an issue or contact the maintainers.

## License

By contributing, you agree that your contributions will be licensed under the same license as the project.

---

<iframe src="https://github.com/sponsors/neomello/button" title="Sponsor neomello" height="32" width="114" style="border: 0; border-radius: 6px;"></iframe>

**Author:** MELLØ // NEØ DEV

This project follows NEØ development standards.
Changes are allowed, inconsistency is not.

Change is allowed.
Inconsistency is not.
