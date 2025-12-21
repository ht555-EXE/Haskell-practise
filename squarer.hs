square :: [Int] -> [Int]
square xs = [x*x | x <- xs]

main :: IO()
main = print(square [1,2,3,4,5])