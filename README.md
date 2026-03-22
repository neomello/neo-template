# NEØ Template

Minimal baseline for new repositories.

This template is designed to give each new project a clean start with a few practical defaults:

- sane Git and editor defaults
- lightweight documentation
- basic CI for Markdown and formatting
- Dependabot for dependency and workflow updates

## What stays

- `.editorconfig`, `.gitignore`, `.gitattributes`
- `.github/workflows/ci.yml`
- `.github/dependabot.yml`
- `README.md`, `CONTRIBUTING.md`, `SECURITY.md`
- `standards/README.md`
- `standards/readme.template.md`

## What this template avoids

- environment-specific setup
- organization-heavy governance docs
- fragile automation that depends on repository settings
- rules that create noise without protecting quality

## How to use

1.  Create a new repository from this template.
2.  Update `README.md` with your project scope.
3.  Adjust or remove `CODEOWNERS`, `PULL_REQUEST_TEMPLATE.md`, and `dependabot.yml` as needed.
4.  Add project-specific tooling only after the first real need appears.

## CI

The default CI checks only two things:

- Markdown lint for `*.md`
- Prettier formatting for `*.md`, `*.json`, `*.yml`, `*.yaml`

That is enough for a baseline. Everything else should be earned by the project, not inherited by
inertia.
