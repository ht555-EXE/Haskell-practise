number :: [Int] -> Int
number xs
  = totalize (reverse xs)
    where
    totalize []
      = 0
    totalize (x:xs)
      = x + 10 * totalize xs

prime :: Int -> Bool
prime n
  = factors n == [1,n]
    where
    factors n
      = [f | f <- [1..n], n `mod` f == 0]

oddCheck :: [Int] -> Bool
oddCheck x = (sum x `mod` 2 == 1)

generator :: [[[Int]]]
generator
  = [ [[x3,x2,x1],[y3,y2,y1],[z3,z2,z1]]
    | x3 <- [1..9]
    , x2 <- [0..9], x2 `notElem` [x3]
    , x1 <- [0..9], x1 `notElem` [x3,x2]
    , y3 <- [1..9], y3 `notElem` [x3,x2,x1]
    , y2 <- [0..9], y2 `notElem` [x3,x2,x1,y3]
    , y1 <- [0..9], y1 `notElem` [x3,x2,x1,y3,y2]
    , z3 <- [1..9], z3 `notElem` [x3,x2,x1,y3,y2,y1]
    , z2 <- [0..9], z2 `notElem` [x1,x2,x3,y3,y2,y1,z3]
    , z1 <- [0..9], z1 `notElem` [x1,x2,x3,y3,y2,y1,z3,z2]
    ]

selector :: [[Int]] -> Bool
selector [as,bs,cs]
  = oddCheck as && oddCheck bs && oddCheck cs && 
    prime a && prime b && prime c
  && b - a == c - b
  && a < b && b < c
  where
  a = number as
  b = number bs
  c = number cs

main :: IO ()
main
  = print (head (filter selector generator))