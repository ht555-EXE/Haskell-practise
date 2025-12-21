number :: [Int] -> Int
number xs
  = totalize (reverse xs)
    where
    totalize []
      = 0
    totalize (x:xs)
      = x + 10 * totalize xs

toBase5 :: Int -> [Int]
toBase5 0 = [0]
toBase5 n = 
    toBase5 (n `div` 5) ++ [n `mod` 5]

toBase8 :: Int -> [Int]
toBase8 0 = [0]
toBase8 n = 
    toBase8 (n `div` 8) ++ [n `mod` 8]

isort :: [Int] -> [Int]
isort(x:xs) =
    insert x (isort xs)
isort [] = []

insert :: Int -> [Int] -> [Int]
insert e (x:xs)
    | e < x = e : x : xs
    | otherwise = x : insert e xs
insert e [] =
    [e]

generator :: [Int]
generator = [512..624]

selector :: Int -> Bool
selector n =
    isort (toBase5 n) == isort (toBase8 n)

main :: IO()
main = print (head (filter selector generator))