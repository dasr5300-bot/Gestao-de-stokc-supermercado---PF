# Sistema de Gestão de Stock de Supermercado


## Fase 1 — Modelação e Núcleo Funcional
- Modelos de dados em `src/Model.hs`: entidades `Produto`, `Datavalidade` e `Loja`.
- Funções essenciais puras e recursivas em `src/Domain.hs`: adicionar, remover, listar stock, verificar validade e atualizar quantidades.
- Dados de teste embutidos (`lojaExemplo`) para demonstração.

## Testes no GHCi

Para carregar o módulo no terminal:
```bash
cd projeto
ghci src/Domain.hs
```

Comandos de teste no GHCi:
- `verStock (produtos lojaExemplo)`
- `vervalidade lojaExemplo 1`
- `verquantidade lojaExemplo 2`



