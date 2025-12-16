import qualified Data.Set as Set

multiplesOf3And5 :: Int -> Int
multiplesOf3And5 0 = 0
multiplesOf3And5 n =
    sum(Set.fromList([3, 0..n-1] ++ [5, 0..n-1]))


main :: IO()
main = print $ multiplesOf3And5 10