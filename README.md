# NEØ — Dev Workspace

Standardized workspace for development following the **NEØ Protocol**. This repository serves as a template and complete backup of the working environment, ensuring total recovery even after data loss.

<iframe src="https://github.com/sponsors/neomello/card" title="Sponsor neomello" height="225" width="600" style="border: 0;"></iframe>

## Purpose

This workspace centralizes:

-  **Code standards** (`standards/`) - Rules and conventions
-  **Automation scripts** (`scripts/`) - Installation and synchronization
-  **Projects** (`projects/`) - Work in progress
-  **Complete backup** - Total environment recovery

### Total Recovery

Even if you lose everything on your Mac, you can recover:

1.  Clone this repository
2.  Run `./scripts/install.sh`
3.  Configure secrets: `~/.zshrc.secrets`
4.  Environment restored

## Structure

```text
neo-dev/
├── README.md                    # This file
├── standards/                   # Standards and rules
│   ├── README.md
│   ├── ai.rules.md              # Rules for AI
│   ├── markdown.rules.md        # Markdown rules
│   ├── zshrc.rules.md           # Shell rules
│   └── ...
├── scripts/
│   └── install.sh               # Complete installation
├── projects/                    # Active projects
│   └── playground/
├── infra/                       # Infrastructure
├── scratch/                     # Temporary drafts
└── mcp-servers.json.template     # MCP Servers template
```

## Quick Start

### 1. Clone the repository

```bash
cd ~/CODIGOS
git clone [your-repo] neo-dev
cd neo-dev
```

### 2. Run installation

```bash
chmod +x scripts/install.sh
./scripts/install.sh
```

### 3. Configure secrets

```bash
# The script creates automatically if it doesn't exist
# Edit and add your API keys
cursor ~/.zshrc.secrets
# or
code ~/.zshrc.secrets
```

### 4. Reload shell

```bash
source ~/.zshrc
```

## Workflows

### WF-01: Standardization

When creating new standards:

1.  Document in `standards/`
2.  Update this README
3.  Commit with descriptive message

### WF-02: Backup and Recovery

**Automatic backup:**

-  The `install.sh` script creates backups in `~/.config/neo_mello/backups/`
-  All modified files are saved before changes

**Complete recovery:**

```bash
# 1. Clone the repository
git clone [your-repo] neo-dev
cd neo-dev

# 2. Run installation
./scripts/install.sh

# 3. Configure secrets
cursor ~/.zshrc.secrets

# 4. Reload shell
source ~/.zshrc
```

**View backups:**

```bash
ls -lh ~/.config/neo_mello/backups/
```

### WF-03: New Projects

When starting a new project:

1.  Create in `projects/project-name/`
2.  Follow standards in `standards/`
3.  Document in the project README

## Security

### ⚠️ NEVER version

-  `~/.zshrc.secrets` - API keys and tokens
-  Files with real credentials
-  Personal access tokens

### ✅ Always version

-  Templates (`.template` suffix)
-  `mcp-servers.json.template` - MCP template (no secrets)
-  Public configurations
-  Automation scripts

## MCP Servers (Multi-Client Protocol)

Cursor supports MCP Servers for integration with external tools.

### Automatic Configuration

The `install.sh` script automatically configures:

1.  **thirdweb-api**: API for blockchain operations
    -  Requires `THIRDWEB_SECRET_KEY` in `~/.zshrc.secrets`
    -  The script automatically replaces the placeholder

2.  **GitKraken**: GitKraken CLI integration
    -  Requires `gk` installed: `brew install gitkraken-cli`
    -  Automatic configuration via `gk mcp install cursor`

### Manual Configuration

If you need to configure manually:

1.  Copy the template:

   ```bash
   cp mcp-servers.json.template ~/Library/Application\ Support/Cursor/User/mcp-servers.json
   ```

2.  Replace the placeholder:

   ```bash
   # Get secret key
   grep THIRDWEB_SECRET_KEY ~/.zshrc.secrets

   # Edit manually
   cursor ~/Library/Application\ Support/Cursor/User/mcp-servers.json
   ```

3.  Restart Cursor to load MCP servers

### Verify MCP Servers

After restarting Cursor, MCP servers should appear automatically. Check logs in:

```bash
ls -la ~/Library/Application\ Support/Cursor/logs/
```

## Multi-Machine Synchronization

### Via Git (Recommended)

```bash
# Machine 1: Commit changes
git add .
git commit -m "feat: update standards/configs"
git push

# Machine 2: Pull and apply
git pull
./scripts/install.sh
source ~/.zshrc
```

**Important:** This repository is your complete backup. Always keep it updated on Git to ensure total recovery.

## Standards

All standards are in `standards/`:

-  `markdown.rules.md` - Markdown formatting rules
-  `ai.rules.md` - Rules for AI usage
-  `zshrc.rules.md` - Shell rules
-  `HOW_CURSOR_READS.md` - How Cursor reads this workspace
-  `extensions.txt` - List of Cursor/VS Code extensions

**Always consult before creating new standards.**

## Cursor/VS Code Extensions

Complete list of extensions organized by category in `standards/extensions.txt`.

**Total: 47 active extensions** (9 removed: Java, Django, Deno) organized in:

-  Core/Essential (4)
-  Git/Versioning (4)
-  Python (10)
-  JavaScript/TypeScript (4)
-  Web/Frontend (4)
-  Docker/Containers (3)
-  Jupyter (5)
-  Java (7)
-  And other categories...

**Install all extensions:**

```bash
cat standards/extensions.txt | grep -v "^#" | grep -v "^$" | xargs -L 1 cursor --install-extension
```

**Update extension list:**

```bash
cursor --list-extensions > standards/extensions.txt
```

## Troubleshooting

### Secrets not loading

```bash
# Check if file exists
ls -la ~/.zshrc.secrets

# Reload shell
source ~/.zshrc

# Check variables
env | grep -i api
```

### Scripts not executing

```bash
# Give permission
chmod +x scripts/*.sh

# Check syntax
bash -n scripts/install.sh
```

## Maintenance

### Update standards

```bash
# Edit files in standards/
# Commit and push
git add standards/
git commit -m "docs: update standards"
git push
```

### Manual backup

Backups are created automatically by `install.sh`, but you can check:

```bash
ls -lh ~/.config/neo_mello/backups/
```

### Cleanup

```bash
# Clean old drafts
rm -rf scratch/*

# Clean node_modules (if needed)
find projects/ -name node_modules -type d -prune -exec rm -rf {} +
```

## Contributing

This is a personal repository, but changes are allowed following:

1.  Descriptive commit messages
2.  Tests before push
3.  Updated documentation

**Inconsistency is not allowed.**

---

<iframe src="https://github.com/sponsors/neomello/button" title="Sponsor neomello" height="32" width="114" style="border: 0; border-radius: 6px;"></iframe>

## Contact

[neo@neoprotocol.space](mailto:neo@neoprotocol.space)

<div align="center">
  <a href="https://x.com/node_mello">
    <img src="https://img.shields.io/badge/-@node_mello-ff008e?style=flat-square&logo=twitter&logoColor=white" alt="Twitter @node_mello" />
  </a>
  <a href="https://www.instagram.com/neoprotocol.eth/">
    <img src="https://img.shields.io/badge/-@neoprotocol.eth-ff008e?style=flat-square&logo=instagram&logoColor=white" alt="Instagram @neoprotocol.eth" />
  </a>
  <a href="https://etherscan.io/">
    <img src="https://img.shields.io/badge/-neomello.eth-ff008e?style=flat-square&logo=ethereum&logoColor=white" alt="Ethereum neomello.eth" />
  </a>
</div>

<div align="center">
  <i>"Expand until silence becomes structure."</i>
</div>

**Author:** MELLØ // NEØ DEV

This project follows NEØ development standards.
Changes are allowed, inconsistency is not.

