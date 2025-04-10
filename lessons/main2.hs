--Patern Matching | Combinação de padrão

module Teste where

numerosExtenso :: Int -> String
numerosExtenso 1 = "Um"
numerosExtenso 2 = "Dois"
numerosExtenso x = "?"

saudar :: String -> String
saudar "Fulano" = "Seja bem vindo Fulano"
saudar "Cicrano" = "Seja mal vindo Cicrano"
saudar "Palmeiras" = "Nao tem mundial"
saudar nome = "Seja bem vindo: " ++ nome

pmTupla :: (Int, Int) -> Int
pmTupla (1,1)      = 2
pmTupla (x,1)      = 1
pmTupla (1,x)      = x
pmTupla (321, 4)   = 326

pmTupla (x, y) = x + y --Pattern Matching forAll

pmLista :: [Int] -> Int
pmLista []        = 0
pmLista [x]       = x
pmLista [_,y]     = y --equivalente ao second 
pmLista [z, y, x] = z
--pmLista (x:xs) = x --Amplamente utilizado, vai dar pau se não tiver um caso default
pmLista (x:z:y:xs:xy) = somarUm x
--Parênteses não se sabe o tamanho / com colchetes se sabe o tamanho

somarUm :: Int -> Int
somarUm x = x + 1

--Pattern Matching forAll

--Dado um específico dado é retornado um valor específico (muito próximo do switch case)

--Tipos de dados algébricos

{-
data Binario = Zero | Um deriving Show
binarioParaInt Um = 1
binarioParaInt Zero = 0

intParaBinario :: Int -> Binario
intParaBinario 0 = Zero
intParaBinario 1 = Um

data Pessoa = Fisica String Int | Juridica String Int deriving Show

getNome :: Pessoa -> String
getNome (Fisica nome cpf) = nome
getNome (Juridica nome cnpj) = nome

setNome :: Pessoa -> String -> Pessoa
setNome (Fisica nome cpf) novoNome =
        Fisica novoNome cpf
--criou-se uma nova variável/um novo dado

public class Binario {}
public class Zero extens Binario()
-}

--Record Syntax

data Pessoa = Fisica{nome::String, cpf::String}
            | Juridica{nome::String, cnpj::String}
            deriving Show

--Criação de todo o código acima em tempo de execução
--Java Reflection in JAVA ()