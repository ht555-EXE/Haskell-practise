countBy :: Integer -> Int -> [Integer]
countBy x n = take n [x, x + x..]
            

main :: IO()
main = print(countBy 2 5)