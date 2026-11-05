module Main where

import Model
import Domain

main :: IO ()
main =
    putStrLn "Nome da loja:" >>
    getLine >>= \nome ->
    executar (criarLoja nome)

executar :: Loja -> IO ()
executar loja =
    putStrLn "----Comandos---- \n-loja\n--adicionarproduto\n--removerproduto\n--vervalidade\n--verquantidade\n--verstock\n--atualizarstock\n--sair" >>
    getLine >>= \comando ->
    case comando of
        "sair" ->
            putStrLn "Programa terminado!"
        "adicionarproduto" ->
            putStrLn "Nome do produto:" >>
            getLine >>= \nome ->
            putStrLn "ID:" >>
            readLn >>= \identificador ->
            putStrLn "Categoria:" >>
            getLine >>= \cat ->
            putStrLn "Preco:" >>
            readLn >>= \valor ->
            putStrLn "(Data de Validade) Dia:" >>
            readLn >>= \d ->
            putStrLn "Mes:" >>
            readLn >>= \m ->
            putStrLn "Ano:" >>
            readLn >>= \a ->
            putStrLn "Quantidade:" >>
            readLn >>= \qtd ->
            let produto = Produto nome identificador cat valor
                            (Datavalidade d m a) qtd
                novaLoja = adicionarProduto loja produto
            in putStrLn "Produto adicionado!" >>
               print novaLoja >>
               executar novaLoja
        "removerproduto" ->
            putStrLn "ID do produto a remover:" >>
            readLn >>= \identificador ->
            let novaLoja = removerProduto loja identificador
            in putStrLn "Produto removido!" >>
            print novaLoja >>
            executar novaLoja
        "verstock" ->
            putStrLn (verStock (produtos loja)) >>
            executar loja
        "vervalidade" ->
            putStrLn "ID do produto a ver a validade:" >>
            readLn >>= \identificador ->
            print (vervalidade loja identificador) >>
            executar loja
        "verquantidade" ->
            putStrLn "ID do produto a ver a quantidade " >>
            readLn >>= \identificador ->
            print (verquantidade loja identificador) >>
            executar loja
        "loja" ->
            print loja >>
            executar loja
        "atualizarstock" ->
            putStrLn "ID do produto a atualizar: " >>
            readLn >>= \identificador ->
            print (verquantidade loja identificador) >>
            putStrLn "Quantidade a adicionar: " >>
            readLn >>= \qtd ->
            let novaLoja = atualizarstock loja identificador qtd
            in putStrLn "Produto atualizado!" >>
            executar novaLoja
        _ -> executar loja
        