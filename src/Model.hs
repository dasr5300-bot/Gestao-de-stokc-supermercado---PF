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

data Loja = Loja{ 
    produtos :: [Produto],
    utilizadores :: [Utilizador]
}deriving (Show, Eq)

produto1 :: Produto
produto1 = Produto "Maça" 100 "Fruta" 1.00 (Datavalidade 02 12 2026) 50

produto2 :: Produto
produto2 = Produto "Leite" 101 "Laticinio" 1.30 (Datavalidade 12 01 2027) 100

utilizador1 :: Utilizador
utilizador1 = Utilizador "Ana" 1 100.0

utilizador2 :: Utilizador
utilizador2 = Utilizador "Joao" 2 37.2