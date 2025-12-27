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

### 4. Commit

-  Use descriptive commit messages
-  Follow the pattern: `type: brief description`
-  Examples:
-  `feat: add new feature`
-  `fix: fix specific bug`
-  `docs: update documentation`

### 5. Pull Request

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

