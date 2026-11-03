module Model where

data Datavalidade = Datavalidade{ dia :: Int , mes :: Int , ano :: Int}
deriving(Show,Eq)

data Produto = Produto{
    nomeProduto :: String,
    idproduto :: Int,
    categoria :: String,
    preco :: Double,
    datavalidade :: Datavalidade,
    quantidade :: Int
}deriving (Show, Eq)

data Utilizador = Utlizador{
    nomeUtilizador :: String,
    idUtilizador :: Int,
    saldo :: Double
}deriving(Show, Eq)

produto1 :: Produto
produto1 = Produto "Maça" 100 "Fruta" 1.00 (Datavalidade 02 12 2026) 50