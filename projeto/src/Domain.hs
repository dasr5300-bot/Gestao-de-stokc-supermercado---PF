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