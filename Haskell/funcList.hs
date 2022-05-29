import Data.Foldable
import Data.List
-- DATA
fibNumbers = [1,1,2,3,5,8]
moreFibs = [13,21,34,55,89,144]
combineFibs = fibNumbers ++ moreFibs --concatenate list

-- CONDITIONALS
--CASE:
aaa x = case x of 
             1 ->  "A"
             2 ->  "B"
             3 ->  "C"
--CASE II Function
myCaseFunction :: [Int] -> Int
myCaseFunction xs = case xs of
        [a] -> a+4
        [a,b] -> a+b+4
        (1:2 : _) ->3
        (3:4:_) ->7
        [] -> 30303
-- Number is 42
bbb x = if x>42 then "elo" else "no elo"

--scopes:: Int -> String
--scopes x=
--    x<=0 = "small num"
--    x<=10 ="medium numb"
--    x<100 ="big numb"
--    otherwise = "very very big numb"

--recurrence------------------------
silnia 0=1
silnia n = n * silnia (n-1)

--WHERE -- LET
--Where
wherea x y = let r = 3*x
                 s = 5*y
                 in r + s
--Let
mathFunctionLet ::Int -> Int ->Int ->Int 
mathFunctionLet a b c =
    let diff = c-a
        diff2 = b-a
        mult = a * b * c
    in diff + diff2 + mult + a
mathFunctionWhere a b c = diff1 + diff2 + mult + a
    where 
        diff1 = c-a
        diff2 = b-a
        mult = a * b * c
sumAreas x y = pole + obwod
    where{pole=x*y; obwod=2*x+2*y}
    

-- OPERATIONS on LIST
exampleList=['a','b','c']

--Prelude> [2*xs | xs <- [4,7]]
--[8,14]

--Vector's
funcVect=[(x,y) | x<-[1..2], y<-[1..2]]
-- (1,1),(1,2)


-- Min/Max List
maxFib = maximum combineFibs
minFib = minimum combineFibs

--from infity list take only first 30
-- take n 
takeCycles x = take x (cycle[1,2,3,4])

infOdds=[1,3..]
takeOdds = take 30 infOdds 
takeCycle = take 30 (cycle[1,2,3,4,5,6])
-- drop first five numbers of list
dropFibs = drop 5 combineFibs 
whileFibs = takeWhile (<=88) combineFibs

-- list sort
unordList = [545,2,34,13,56,78]
sortList = sort unordList

--uncurry 
--Input: uncurry mod (5,4)
--Output: 1
-----
--Input: ucurry(*) 4 5
--Output: 20
uncurryb = uncurry (*)
--ghci> uncurryb (3,2)
-- 6
--curry

currya = curry (\ (x,y) -> 2*x+y)
curryb x y = curry fst x y


-- FILTER
oddList = filter(>5) [1,2,3,4,5,6]
--list length
filtrList=filter (\x -> length x > 4) ["aaaa","bbbbbbbbbbbbb","cc"]

--Special list
--[f(x) | x<-xs]
--[2*x | x <- [0..4]]

-- ZIP -> Merge with pair
zipList x y = zip x y
--Input: zipList [1,2,3] [2,3,4]
--Output: [(1,2),(2,3),(3,4)]

-- UNZIP
--Input: unzip [(1,2),(2,3),(3,4)]
--Output: ([1,2,3],[2,3,4])

-- ZIPWITH 
--twoLists=[[1,1,2,3,5,8],[13,21,34,55,89,144]]

twoLists = [fibNumbers,moreFibs]
-- add elem from first and second list
myZip = zipWith (+) [1,2,3,4][5,6,7,8,9]
zipFibs = zipWith (+) fibNumbers moreFibs

-- head- first elem of list / tail-all after first char / init-delete last elem
--MAP
-- every elem *2 
mapLists= map (*2) [1..10]
--output [2,4,6,8,10,12,14,16,18,20]
mapList x = map (3*) x
--Input: map (3*) [1,2,3,4]
--Output: [3,6,9,12]
--ghci> map (<4) [1,2,4,5] 
--[True,True,False,False]


--recurrence List
recurrenceList::[Int] -> Int
recurrenceList[] = 0
recurrenceList (x:xs) = x + sum xs

--f:: repElems
--f_ [] = []
--f n (x:xs) =
--    if null xs 
--        then rep n x
--    else rep n x ++ f n xs

--Input: map reverse ["abc","cda","1234"]
--Output: ["cba","adc","4321"]
--


multiList = foldr(*)1[2,3,4,5]

--foldr f e ([])
-- 2* (3 *(4*(5 * 1)))

--Input: foldr (\x y -> (x+y)/2) 54 [12,4,10,6]
--Output: 12.0

--Input: foldr (/) 2 [8,12,24,4]
--Output: 8.0
foldrLambda = foldr (\x y -> (x+y)/2) 54 [12,4,10,6]

minusList= foldl (-) 1[2,3,4,5]
-- (((((1)-5)-4)-3)-2)
foldlLambda x y = foldl(\x y -> 2*x + y ) 1[9]
--Output: 43
sumFold = foldl (+) 0 [1..100]
--same as sum
-- different way to write List [1,2,3,4,5]
consList = 1 : 2 : 3 : 4 :5 : []
--  66: constList = [66,1:2:3]

--myFibs = [0,1,1,2,3..] will not work
infFibs =  0:1: zipWith (+) infFibs (tail infFibs)

--Lezy Evolution
-- Indoex of list
lazyEvolution = [1,2,3] ++ lazyEvolution
-- stop lazy evolution input - >x!!8

--CONSTRUCTORS
data TrafficLights = Red | Yellow | Green
drive:: TrafficLights -> String
drive Red = "Stop"
drive Yellow = "Be cerful"
drive Green = "Drive !"

--TREE
data Tree a = Empty | Node a (Tree a) (Tree a)
t:: Tree Int
t = Node 5 (Node 3(Node 8 Empty Empty)
                  (Node 1 Empty Empty))
           (Node 4 Empty
                  (Node 6 Empty Empty))
depth :: Tree a -> Int
depth Empty =0
depth (Node _ l r) = 1 + max (depth l) (depth r)

-- take 10 (foldr(:)) [] []..]).