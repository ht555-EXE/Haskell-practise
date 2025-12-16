noDuplicates :: [Int] -> [Int]
noDuplicates [] = []
noDuplicates [x] = [x]
noDuplicates (x:xs)
    | x `elem` xs = noDuplicates xs
    | otherwise = x : noDuplicates xs

main :: IO()
main = print(noDuplicates [1,2,3,3,5,3,6])