square :: [Int] -> [Int]

square numbers =
    [x * x | x <- numbers]



main :: IO()
main = print $ square [5,10]