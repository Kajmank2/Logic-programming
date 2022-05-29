--  Signle comment
{- Multi Line comment
-}

-- Haskell Imporatan

-- IMPORTS
import Data.List
-- TYPES
-- Bool, INT, Intrger, Float, Double, Char, [Char], Tuples

-- Bool
-- True or False
trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True);

-- :: Int
-- Whole number -2^63 - 2^63
maxInt = maxBound :: Int --maxBound -maxValue / minBound -- min Valiue

-- :: Integer
-- Unbounded Whole Numbers
-- default for int Numers
numFive = 5
numFive' = 5.0 :: Float

boolFive = 5 > 4

--myFloat :: Float
-- if not precise variable  default is :t double
myFloat = 1.0 + 2.4

--double
myDouble = 1.55555555555 + 0.00000000000003

-- :: Char
-- Char are single characters and denoted
-- within single quotes

singleChar = 'a'
myname :: [Char]
myname = "Karol"
myname' = ['K','a','r','o','l']

--- MATH
addNum = 3+3
subNum = 4-2
multNum= 9*9
divNum = 3/6
modNum  = mod 9 2
addNeg = 4 + (-4)

-- pi, exp , e.g

truncDouble = truncate myDouble
roundDouble = round myDouble
ceilDouble = ceiling myDouble
floorDouble = floor myDouble
-- square only for floating numb
squareFive = sqrt numFive'

--Lists
numList = [1,2,3,4,5]
rangeList = [1..5]
alphaList=['a'..'z']
evenNums = [2,4..20]

--Iterate
--Input: take 10 (iterate (2*) 1)
--Output: [1,2,4,8,16,32,64,128,256,512]

--Input: take 10 (iterate (\x -> (x+3)*2) 1)
--Output: [1,8,22,50,106,218,442,890,1786,3578]

--FLIP 
--Input: flip (/) 1 2
--Output: 2.0
