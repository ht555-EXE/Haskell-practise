digits5 :: Int -> [Int]
digits5 n
    | n < 5 = [n]
    | otherwise = digits5 (n `div` 5) ++ [n `mod` 5]

digits8 :: Int -> [Int]
digits8 n
    | n < 8 = [n]
    | otherwise = digits8 (n `div` 8) ++ [n `mod` 8]

generator :: [Int]
generator = [512..614]

selector :: Int -> Bool
selector n = 
    equalset (digits5 n) (digits8 n)

equalset :: [Int] -> [Int] -> Bool
equalset as bs
 = isort as == isort bs

insert :: Int -> [Int] -> [Int]
insert e[] = [e]
insert e(x:xs)
    | e < x = e : x : xs
    | otherwise = x : insert e xs

isort :: [Int] -> [Int]
isort [] = []
isort (x:xs) = insert x (isort xs)

main :: IO ()
main = print(head (filter selector generator))