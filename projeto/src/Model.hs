module Model where

type ID = Int
type Nome = String
type Preco = Double
type Quantidade = Int

data Datavalidade = Datavalidade{ dia :: Int , mes :: Int , ano :: Int}deriving (Show,Eq)

data Produto = Produto{
    nomeProduto :: String,
    idproduto :: Int,
    categoria :: String,
    preco :: Double,
    datavalidade :: Datavalidade,
    quantidade :: Int
}deriving (Show, Eq)

data Loja = Loja{
    nomeloja :: String, 
    produtos :: [Produto]
}deriving (Show, Eq)
