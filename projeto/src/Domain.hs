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