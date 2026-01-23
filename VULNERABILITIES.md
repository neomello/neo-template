# Vulnerabilidades Detectadas

**Data:** 2026-01-23  
**Última atualização:** 2026-01-23  
**Fonte:** `npm audit --audit-level=moderate` (executado no diretório pai `/Users/nettomello`)  
**Status:** Documentação de vulnerabilidades encontradas em dependências globais

## Nota Importante

Este template não possui dependências próprias. As vulnerabilidades documentadas foram detectadas em dependências instaladas no diretório pai (`/Users/nettomello`), não no template em si.

Este documento serve como referência para quando o template for usado em projetos que incluam essas dependências.

## Resumo

Este documento lista todas as vulnerabilidades encontradas em dependências indiretas do projeto. Estas são dependências transitivas (não instaladas diretamente) que precisam ser atualizadas através das dependências principais.

## Vulnerabilidades Críticas (9)

### 1. elliptic (crítico)

-  **Versões afetadas:** Todas (`*`)
-  **Dependências afetadas:**
-  `@mailchain/crypto/node_modules/elliptic`
-  `node_modules/elliptic`
-  `@ethersproject/signing-key` (<=5.8.0)
-  `secp256k1` (>=2.0.0)

**Problemas identificados:**

-  [GHSA-vjh7-7g9h-fjfh](https://github.com/advisories/GHSA-vjh7-7g9h-fjfh) - Elliptic's private key extraction in ECDSA upon signing a malformed input
-  [GHSA-f7q4-pwc6-w24p](https://github.com/advisories/GHSA-f7q4-pwc6-w24p) - Elliptic's EDDSA missing signature length check
-  [GHSA-977x-g7h5-7qgw](https://github.com/advisories/GHSA-977x-g7h5-7qgw) - Elliptic's ECDSA missing check for whether leading bit of r and s is zero
-  [GHSA-49q7-c7j4-3p7m](https://github.com/advisories/GHSA-49q7-c7j4-3p7m) - Elliptic allows BER-encoded signatures
-  [GHSA-fc9h-whq2-v747](https://github.com/advisories/GHSA-fc9h-whq2-v747) - Valid ECDSA signatures erroneously rejected in Elliptic
-  [GHSA-434g-2637-qmqr](https://github.com/advisories/GHSA-434g-2637-qmqr) - Elliptic's verify function omits uniqueness validation
-  [GHSA-848j-6mx2-7j84](https://github.com/advisories/GHSA-848j-6mx2-7j84) - Elliptic Uses a Cryptographic Primitive with a Risky Implementation

**Solução:** Atualizar `@mailchain/sdk` para versão `0.31.0` (breaking change)

### 2. protobufjs (crítico)

-  **Versões afetadas:** 7.0.0 - 7.2.4
-  **Dependências afetadas:**
-  `node_modules/protobufjs`
-  `@mailchain/sdk` (>=0.4.0)

**Problema identificado:**

-  [GHSA-h755-8qp9-cq85](https://github.com/advisories/GHSA-h755-8qp9-cq85) - protobufjs Prototype Pollution vulnerability

**Solução:** Atualizar `@mailchain/sdk` para versão `0.31.0` (breaking change)

## Vulnerabilidades Altas (2)

### 3. axios (alto)

-  **Versões afetadas:** 1.0.0 - 1.11.0
-  **Dependências afetadas:**
-  `@mailchain/api/node_modules/axios`
-  `@mailchain/sdk/node_modules/axios`
-  `@mailchain/api` (todas as versões)
-  `@mailchain/sdk` (>=0.4.0)

**Problemas identificados:**

-  [GHSA-wf5p-g6vw-rhxx](https://github.com/advisories/GHSA-wf5p-g6vw-rhxx) - Axios Cross-Site Request Forgery Vulnerability
-  [GHSA-8hc4-vh64-cxmj](https://github.com/advisories/GHSA-8hc4-vh64-cxmj) - Server-Side Request Forgery in axios
-  [GHSA-jr5f-v2jv-69x6](https://github.com/advisories/GHSA-jr5f-v2jv-69x6) - axios Requests Vulnerable To Possible SSRF and Credential Leakage via Absolute URL
-  [GHSA-4hjh-wcwx-xvwj](https://github.com/advisories/GHSA-4hjh-wcwx-xvwj) - Axios is vulnerable to DoS attack through lack of data size check

**Solução:** Atualizar `@mailchain/sdk` para versão `0.31.0` (breaking change)

### 4. qs (alto)

-  **Versões afetadas:** <6.14.1
-  **Dependências afetadas:**
-  `node_modules/qs`

**Problema identificado:**

-  [GHSA-6rw7-vpxm-498p](https://github.com/advisories/GHSA-6rw7-vpxm-498p) - qs's arrayLimit bypass in its bracket notation allows DoS via memory exhaustion

**Solução:** Executar `npm audit fix`

## Vulnerabilidades Moderadas (2)

### 5. lodash (moderado)

-  **Versões afetadas:** 4.0.0 - 4.17.21
-  **Dependências afetadas:**
-  `node_modules/lodash`

**Problema identificado:**

-  [GHSA-xxjr-mmjv-4gpg](https://github.com/advisories/GHSA-xxjr-mmjv-4gpg) - Lodash has Prototype Pollution Vulnerability in `_.unset` and `_.omit` functions

**Solução:** Executar `npm audit fix`

### 6. undici (moderado)

-  **Versões afetadas:** 7.0.0 - 7.18.1
-  **Dependências afetadas:**
-  `node_modules/undici`

**Problema identificado:**

-  [GHSA-g9mf-h72j-4rw9](https://github.com/advisories/GHSA-g9mf-h72j-4rw9) - Undici has an unbounded decompression chain in HTTP responses on Node.js Fetch API via Content-Encoding leads to resource exhaustion

**Solução:** Executar `npm audit fix`

## Vulnerabilidades Baixas (5)

As 5 vulnerabilidades baixas não foram detalhadas no relatório, mas estão relacionadas às dependências acima mencionadas.

## Plano de Ação

### Concluído

1.  **Atualizado @mailchain/sdk para v0.31.0**

    ```bash
    npm install @mailchain/sdk@0.31.0
    ```

    Status: Concluído

2.  **Corrigidas vulnerabilidades moderadas e baixas**

    ```bash
    npm audit fix
    ```

    Corrigido:

    -  lodash (4.17.21 → 4.17.23)
    -  qs (6.14.0 → 6.14.1)
    -  undici (7.16.0 → 7.19.0)

### Pendente

**Problema:** Mesmo com @mailchain/sdk@0.31.0, ainda há vulnerabilidades críticas porque as dependências internas do @mailchain ainda usam versões vulneráveis:

-  `elliptic@6.5.4` e `elliptic@6.6.1` (dentro de @mailchain/crypto)
-  `axios@1.6.0` (dentro de @mailchain/api e @mailchain/internal)

**Soluções possíveis:**

1.  **Usar npm overrides no package.json** (forçar versões seguras):

    ```json
    {
      "overrides": {
        "elliptic": "^6.6.2",
        "axios": "^1.7.0"
      }
    }
    ```

2.  **Aguardar atualização do @mailchain/sdk** que use versões seguras das dependências

3.  **Reportar ao mantenedor do @mailchain/sdk** sobre as dependências vulneráveis

4.  **Considerar alternativas** se as vulnerabilidades forem críticas para o uso

### Verificação

Após aplicar as correções, executar novamente:

```bash
npm audit --audit-level=moderate
```

## Dependências Afetadas

### Dependências Diretas/Indiretas Principais

-  `@mailchain/sdk` (>=0.4.0) → Precisa atualizar para 0.31.0
-  `@mailchain/api` (todas) → Atualiza com @mailchain/sdk
-  `@mailchain/crypto` (todas) → Atualiza com @mailchain/sdk
-  `@mailchain/addressing` (>=0.9.0) → Atualiza com @mailchain/sdk
-  `@mailchain/keyring` (>=0.4.0) → Atualiza com @mailchain/sdk
-  `@mailchain/signatures` (todas) → Atualiza com @mailchain/sdk
-  `@ethersproject/signing-key` (<=5.8.0) → Atualiza com @mailchain/sdk
-  `@ethersproject/transactions` (<=5.8.0) → Atualiza com @mailchain/sdk
-  `@ethersproject/abstract-provider` (todas) → Atualiza com @mailchain/sdk
-  `@ethersproject/abstract-signer` (todas) → Atualiza com @mailchain/sdk
-  `@ethersproject/hash` (5.0.6 - 5.8.0) → Atualiza com @mailchain/sdk
-  `secp256k1` (>=2.0.0) → Atualiza com @mailchain/sdk

## Notas

-  Todas as vulnerabilidades críticas e altas estão relacionadas ao pacote `@mailchain/sdk` e suas dependências
-  A atualização para `@mailchain/sdk@0.31.0` deve resolver a maioria dos problemas críticos e altos
-  As vulnerabilidades moderadas podem ser corrigidas com `npm audit fix` sem breaking changes
-  Este é um template, então essas vulnerabilidades podem não afetar projetos que não usam essas dependências

## Referências

-  [npm audit documentation](https://docs.npmjs.com/cli/v8/commands/npm-audit)
-  [GitHub Advisory Database](https://github.com/advisories)
-  [@mailchain/sdk releases](https://github.com/mailchain/sdk/releases)
