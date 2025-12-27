# NEØ — Dev Workspace

**A template-based continuity system for development.**

Work must survive failure.

This repository is not a personal setup. It is a **replicable template** designed to be forked, adapted and maintained as a long-living development workspace.

<iframe src="https://github.com/sponsors/neomello/card" title="Sponsor neomello" height="225" width="600" style="border:0;"></iframe>

---

## Why this exists

Most development environments are fragile, implicit and impossible to rebuild.

NEØ Dev Workspace exists to enforce one idea:
**your environment must be recoverable, deterministic and portable**.

If a machine disappears, context does not.

---

## What you get

* Codified standards for shell, markdown and AI behavior
* Automated installation and recovery
* A clean structure for active projects
* A reproducible environment that can be rebuilt from zero

This repository does not document the environment.
It **recreates** it.

---

## Quick Start

```bash
cd ~/CODIGOS
git clone https://github.com/neomello/neo-template neo-dev
cd neo-dev
chmod +x scripts/install.sh
./scripts/install.sh
```

Secrets are externalized by design:

```bash
cursor ~/.zshrc.secrets
source ~/.zshrc
```

New machine. Same context.

---

## Why sponsor this

This work is public, but it is not free.

Sponsoring means supporting:

* Reproducible development environments
* Failure-resistant workflows
* Infrastructure that outlives hardware

You are not sponsoring a person.
You are sponsoring a **pattern**.

If this template saved you time, prevented loss, or clarified your workflow, sponsorship is simply returning value to the system.

<iframe src="https://github.com/sponsors/neomello/button" title="Sponsor neomello" height="32" width="114" style="border:0;border-radius:6px;"></iframe>

---

## Repository

[https://github.com/neomello/neo-template](https://github.com/neomello/neo-template)

---

> Expand until silence becomes structure.

**Author:** MELLØ
**Protocol:** NEØ

This template evolves.
Inconsistency does not.
