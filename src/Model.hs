module Model where

data Data = Data{ dia :: Int , mes :: Int , ano :: Int}
deriving(Show,Eq)

data Produto = Produto{
    nome :: String,
    idproduto :: Int,
    categoria :: String,
    preco :: Double,
    datavalidade :: Data,
    quantidade :: Int
}deriving (Show, Eq)

data Utlizador = Utlizador{
    nome :: String,
    idUtilizador :: Int,
    Saldo :: Double
}deriving(Show, Eq)

produto1 :: Produto
produto1 = Produto "Maça" 100 "Fruta" 1.00 (Data 02 12 2026) 50