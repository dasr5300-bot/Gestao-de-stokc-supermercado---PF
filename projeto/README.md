# Gestao-de-stokc-supermercado---PF
A aplicação permite criar uma loja e gerir os produtos existentes no respetivo stock. Através de um menu de comandos, o utilizador pode adicionar e remover produtos, consultar informações sobre o stock e atualizar as quantidades disponíveis.

Cada produto é introduzido com os seguintes dados:
- Nome;
- Identificador (ID);
- Categoria;
- Preço;
- Data de validade (dia, mês e ano);
- Quantidade em stock.
Funcionalidades
»O programa disponibiliza os seguintes comandos:
*Comando	Descrição*
-loja	Apresenta os dados da loja.
--adicionarproduto	Permite inserir um produto, preenchendo os seus dados.
--removerproduto	Remove um produto através do seu ID.
--verstock	Apresenta os produtos existentes no stock.
--vervalidade	Consulta a data de validade de um produto através do ID.
--verquantidade	Consulta a quantidade de um produto através do ID.
--atualizarstock	Adiciona uma quantidade à quantidade atual de um produto.
--sair	Termina a execução do programa.


*Tecnologias utilizadas*
- Linguagem: Haskell
- Sistema de compilação: Cabal
# Estrutura
projeto/
├── README.md
├── cabal.project
├── projeto.cabal
├── src/
│ ├── Model.hs
│ ├── Domain.hs
│ ├── Model.hs 
├── app/
│ └── Main.hs
├── test/
│ └── ...
├── data/
│ └── ...
└── docs/
 └── relatorio.pdf

