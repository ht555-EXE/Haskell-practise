perfect :: Int -> Bool
perfect n =
    n > 0 && n == sumProperDivisors
    where
        sumProperDivisors =
            sum(filter (\d -> n `mod` d == 0) [1..n-1])

main :: IO()
main = print $ perfect 28