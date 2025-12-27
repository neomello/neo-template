# Security Policy

## Supported Versions

We actively support security updates for the following versions:

| Version | Supported          |
| ------- | ------------------ |
| main    | :white_check_mark: |
| < main  | :x:                |

## Reporting a Vulnerability

We take security vulnerabilities seriously. If you discover a security vulnerability, please follow these steps:

### Private Reporting (Recommended)

1.  **Do NOT** open a public GitHub issue
2.  Email us directly at: [neo@neoprotocol.space](mailto:neo@neoprotocol.space)
3.  Include the following information:
    -  Description of the vulnerability
    -  Steps to reproduce
    -  Potential impact
    -  Suggested fix (if available)

### Response Timeline

-  **Initial Response**: Within 48 hours
-  **Status Update**: Within 7 days
-  **Resolution**: Depends on severity and complexity

### What to Report

Please report:

-  Authentication/authorization bypasses
-  Remote code execution vulnerabilities
-  SQL injection or other injection flaws
-  Cross-site scripting (XSS)
-  Cross-site request forgery (CSRF)
-  Sensitive data exposure
-  Insecure direct object references
-  Security misconfigurations
-  Exposed secrets or credentials

### What NOT to Report

Please do NOT report:

-  Issues already reported or fixed
-  Issues in dependencies (report to the dependency maintainer)
-  Denial of service (DoS) attacks
-  Social engineering attacks
-  Physical security issues
-  Issues requiring physical access to the system

## Security Best Practices

### For Contributors

-  **NEVER** commit secrets, API keys, or credentials
-  **ALWAYS** use environment variables for sensitive data
-  **ALWAYS** review code before committing
-  **ALWAYS** run security checks before pushing

### For Users

-  Keep your dependencies updated
-  Use strong, unique passwords
-  Enable two-factor authentication (2FA)
-  Review code changes before applying updates
-  Report suspicious activity immediately

## Disclosure Policy

When a security vulnerability is reported:

1.  We will confirm receipt within 48 hours
2.  We will investigate and validate the vulnerability
3.  We will develop a fix and test it thoroughly
4.  We will release the fix in a timely manner
5.  We will credit the reporter (if desired)

**We follow responsible disclosure practices.** We will not publicly disclose vulnerabilities until a fix is available, unless the vulnerability is already public.

## Security Updates

Security updates are released as patches to the main branch. Critical vulnerabilities may result in immediate hotfix releases.

## Acknowledgments

We appreciate the security research community's efforts to keep our projects secure. Responsible disclosure helps protect all users.

---

<iframe src="https://github.com/sponsors/neomello/button" title="Sponsor neomello" height="32" width="114" style="border: 0; border-radius: 6px;"></iframe>

**Author:** MELLØ // NEØ DEV

This project follows NEØ development standards.
Security is a priority, not an afterthought.

