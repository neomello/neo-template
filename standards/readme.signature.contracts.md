<!-- readme signature - para contratos e tokens -->

**Última atualização:** 2025-12-25

## Padrão de Comentários Solidity

**IMPORTANTE:**

-  Use `MELLO` (sem Ø) em comentários Solidity para compatibilidade
-  Não use `@title` específico - deixe genérico ou remova
-  Use apenas `@dev` e `@author` nos comentários

**Template padrão:**

```solidity
/**
 * @dev [Descrição breve do contrato]
 * @author MELLO // POST-HUMAN
 */
contract ContractName {
  // ...
}
```

**Exemplo completo:**

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @dev Token ERC20 com funcionalidades customizadas
 * @author MELLO // POST-HUMAN
 */
contract MyToken is ERC20 {
  // ...
}
```

**Nota:** O caractere "Ø" pode causar problemas em alguns compiladores/ferramentas. Use "MELLO" em código Solidity.

