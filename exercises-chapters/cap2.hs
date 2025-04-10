{-
2.1) Gere as listas:

a) [1,11,121,1331,14641,161051,1771561]
b) [1,2,3,5,6,7,9,10,11,13,14,15,17,18,19,21,22,23,
25,26,27,29,30,31,33,34,35,37,38,39]
c) ["AaBB", "AbBB", "AcBB", "AdBB", "AeBB", "AfBB",
"AgBB"]
d) [5,8,11,17,20,26,29,32,38,41]
e) [1.0,0.5,0.25,0.125,0.0625,0.03125]
f) [1,10,19,28,37,46,55,64]
g) [2,4,8,10,12,16,18,22,24,28,30]
h) ['@','A','C','D','E','G','J','L']

2.2) Crie uma função que verifique se o tamanho de uma String é par ou não. Use Bool como retorno.

2.3) Escreva uma função que receba um vetor de Strings e retorne uma lista com todos os elementos em ordem reversa.

2.4) Escreva uma função que recaba um vetor de Strings e retorne uma lista com o tamanho de cada String. As palavras de tamanho par devem ser excluídas da resposta.

2.5) Escreva a função head como composição de duas outras.

2.6) Faça uma função que receba uma String e retorne True se esta for um palíndromo; caso contrário, False.

2.7) Faça uma função que receba um inteiro e retornse uma tupla, contendo: o dobro deste número na primeira coordenada, o triplo na segunda, o quádruplo na terceira e o quíntuplo na quarta.
-}

--2.1) a)
a21 :: [Int]
a21 = [11^x | x<-[1..6]]

-- b)
b21 :: [Int]
b21 = [x | x<-[1..40], mod x 4 /= 0]

-- c)
c21 :: [String]
c21 = [ "A" ++ [xs] ++ "BB" | xs<-['a'..'g']]

-- d)
d21 :: [Int]
d21 = [x + 3 | x <- [2..39], x /= 11, x/=20, x/=32, mod x 3 == 2]

-- e) Imprime valor errado
e21 :: [Float]
e21 = [1/2^x | x <- [0..5]]

-- f)
f21 :: [Int]
f21 = [1+(9*x) | x <- [0..7]]

-- g)
g21 :: [Int]
--g21 = [x + 2 | x <- [0..28], x/=4, x/=12, x/=18, x/=24, even x]
g21 = [x | x<-[0,2..28], x/=4, x/=12, x/=18, x/=24]

-- h) Imprime valor errado
h21 :: [Char]
h21 = [x | x <- ['@'..'L'], x/='B', x/='F', x/='H', x/='I', x/='K']

--2.2)
ex22 :: [Char] -> Bool
ex22 x = even (length x)

--2.3)
ex23 :: [String] -> [String]
ex23 xs = [reverse x | x <- xs]

--2.4)
ex24 :: [String] -> [Int]
ex24 xs = [length x | x <- xs, odd (length x)]

--2.5)
-- ex25 :: [Char] -> Char
-- ex25 (x:_) = x
ex25 :: [Char] -> Char
--ex25 x = last (reverse x)
ex25 = last . reverse

--2.6)
ex26 :: [Char] -> Bool
ex26 x = reverse x == x

--2.7)
ex27 :: Int -> (Int, Int, Int, Int)
ex27 x = (2*x, 3*x, 4*x, 5*x)