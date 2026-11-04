module Domain where

import Model 


criarloja :: Loja
criarloja = Loja listaprodutos listautilizadores
    where
        listaprodutos =
            [produto1,produto2]
        listautilizadores = 
            [utilizador1,utilizador2]
            