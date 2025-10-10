quicksort :: [Int] -> [Int]
quicksort (x:xs)
    = quicksort [u | u <- xs, u < x]
    ++ [x] ++
    quicksort [u | u <- xs, u >= x]
quicksort [] 
    = []

main :: IO()
main = print (quicksort [6,8,9,3,2,1])
