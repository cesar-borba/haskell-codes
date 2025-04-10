--Lambdas -> FUNÇÃO ANÔNIMA
--Link do C# é programação funcional
--(\ x -> x + 1) 10
--ARGUMENTO != PARÂMETRO

--ARROW FUNCTION EM JAVASCRIPT É PROGRAMAÇÃO FUNCIONAL

--BANCO DE DADOS E HASKELL SÃO DECLARATIVAS

--TEORIA CALCULUS LAMBDA É A BASE DE HASKELL

--STRATEGY -> ANÁLISE COMBINATÓRIA DE CLASSES - PERMUTAÇÃO

--HASH SET

--LAMBDA
--(\ x -> x +1) 10
--somar = (\ x y -> x + y)

--FUNÇÃO DE PRIMEIRA ORDEM É UMA FUNÇÃO UTILIZADA PARA TER PARÂMETROS COMO OUTRAS FUNÇÕES

--MAP É UMA FUNÇÃO DE ALTA ORDEM, exemplo de JAvascript que cria uma função anônima (arrow function)

{-
CURRYING
:t (+)

:t map

POLIMORFISMO PARAMÉTRICO 

-}

--FILTER -> length $ [ x | x<-[1..10], even x]

{-
FILTER também é uma função de ALTA ORDEM
CALCULUS LAMBDA é uma substituição por associação

filter (\ x -> notElem x "AEIOUaeiou") "Palmeiras nao tem mundial"

foldl -> CATAMORFISMO

:t foldl
foldl (\ b a -> b + a) 0 [1..5] -> fibonacci
fold (\ b a -> b ++ [a] ++)

sum é FEITO com foldl

foldl (\ b a -> b + 1) 0 [1..100]

foldl (\ b a -> b ++ [a] ++ "PHODACE") "" "Ola")

se a estrutura não for cumutativa muda todo o padrão

-}

verificarFaixaEtaria :: Int -> String
verificarFaixaEtaria idade
    | idade < 13 = "Crianca"
    | idade < 18 = "Adolescente"
    | otherwise = "Veio"
    where --clausula
        ehCrianca x = x < 13
        ehAdolescente = idade < 18

--reversao
--edge condition (caso base) | caso recursivo

reverter :: [a] -> [a]
reverter [] = []
reverter (x:xs) = reverter xs ++ [x]