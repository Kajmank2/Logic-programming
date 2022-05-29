numList = [1,2,3,4]
rangeList= [1..5]
alphaList=['a'..'z']
evenNums = [2,4..20]
oddNums=[1,3..20]
oddAlpha=['a','c'..'z']

sumNumList = sum [1..5]
sumNumList' = sum numList
prodNumList = product numList

elemList = elem 5 numList

fibNumbers = [1,1,2,3,5,8]
moreFibs = [13,21,34,55,89,144]
combineFibs = fibNumbers ++ moreFibs --concatenate list

-- Min/Max List
maxFib = maximum combineFibs
minFib = minimum combineFibs

--twoLists=[[1,1,2,3,5,8],[13,21,34,55,89,144]]
twoLists = [fibNumbers,moreFibs]
-- add elem from first and second list
myZip = zipWith (+) [1,2,3,4][5,6,7,8,9]
zipFibs = zipWith (+) fibNumbers moreFibs
--from infity list take only first 30
infOdds=[1,3..]
takeOdds = take 30 infOdds 
takeCycle = take 30 (cycle[1,2,3,4,5,6])
-- drop first five numbers of list
dropFibs = drop 5 combineFibs 
whileFibs = takeWhile (<=88) combineFibs
-- every elem *2 
mapList= map (*2) [1..10]
-- list sort
unordList = [545,2,34,13,56,78]
-- sortList = sort unordList
-- head- first elem of list / tail-all after first char / init-delete last elem

multiList = foldr(*)1[2,3,4,5]
--foldr f e ([])
-- 2* (3 *(4*(5 * 1)))

minusList= foldl (-) 1[2,3,4,5]
-- (((((1)-5)-4)-3)-2)

sumFold = foldl (+) 0 [1..100]
--same as sum
-- different way to write List [1,2,3,4,5]
consList = 1 : 2 : 3 : 4 :5 : []
--  66: constList = [66,1:2:3]

--myFibs = [0,1,1,2,3..] will not work
infFibs =  0:1: zipWith (+) infFibs (tail infFibs)

--[0,1] ([1)) -> [0,1,1,2][1,1,2]
listFunc = [x*y | x <- [1..5], y <- [1..5]]
listFunc' = [x*y | x <- [1..5], y <- [1..5], x*y `mod` 3 == 0]

-- TUPLES fst-> first snd->second
myTuple = (" John Doe",1)
getName = fst myTuple
getId = snd myTuple

empNames = ["John Doe","John Been","John Cena","Robert Macron"]
empId = [1,2,3,4]

empList= zip empNames empId
-- Function
add a b = a + b
multiply a b = a * b
func a b c = add(multiply a b) c
-- for compiler ./"program name" 

--main = do 
--  putStrLn "Enter your name :"
--  name <- getLine
--  putStrLn("Hello, "++ name ++ "!")
--
nonUppercase :: [Char] -> [Char]
nonUppercase s = [c | c <- s, elem c['a'..'z']]
main = do 
  let s = nonUppercase"Derek Is The Best!"
  print(s)