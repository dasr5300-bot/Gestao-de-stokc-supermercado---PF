module Domain where

import Model 


criarLoja :: String -> Loja
criarLoja nome = Loja nome []

adicionarProduto :: Loja -> Produto -> Loja
adicionarProduto loja produto = loja { produtos = produtos loja ++ [produto] }

removerProduto :: Loja -> Int -> Loja
removerProduto loja identificador = 
    loja { produtos = filter (\produto -> idproduto produto /= identificador) (produtos loja) }

verStock :: [Produto] -> String
verStock [] = ""
verStock [produto] = nomeProduto produto ++ " - Quantidade: " ++ show (quantidade produto)
verStock (produto:restantes) = nomeProduto produto ++ " - Quantidade: " ++ show (quantidade produto) ++ "\n" ++ verStock restantes

vervalidade :: Loja -> Int -> String
vervalidade loja identificador =
    procurar (produtos loja)
    where
        procurar [] = "Nao existem produtos ou o ID nao foi encontrado."

        procurar (x:xs) =
            case idproduto x == identificador of
                True -> show (datavalidade x)
                False -> procurar xs

atualizarstock :: Loja -> Int -> Int -> Loja
atualizarstock loja identificador qtd =
    loja { produtos = atualizar (produtos loja) }
    where
        atualizar [] = []

        atualizar (x:xs) =
            case idproduto x == identificador of
                True -> x { quantidade = quantidade x + qtd } : xs
                False -> x : atualizar xs
verquantidade :: Loja -> Int -> Int
verquantidade loja identificador =
    procurar (produtos loja)
    where
        procurar [] = 0

        procurar (x:xs) = 
            case identificador == idproduto x of
                True -> quantidade x
                False -> procurar xs

lojaExemplo :: Loja
lojaExemplo = Loja "Supermercado Exemplo"
  [ Produto "Arroz Agulha" 1 "Mercearia" 1.15 (Datavalidade 15 12 2026) 30
  , Produto "Leite Gordo"  2 "Laticinios" 0.85 (Datavalidade 20 11 2026) 12
  , Produto "Maca Gala"    3 "Frutas"     1.49 (Datavalidade 10 11 2026) 5
  ]
