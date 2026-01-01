perfect :: Int -> Bool
perfect n = sum(filter (\x -> n `mod` x == 0)[1..n-1]) == n

main :: IO()
main = print(perfect 28)