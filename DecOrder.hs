import Data.List

number :: [Integer] -> Integer
number xs
  = totalize (reverse xs)
    where
    totalize []
      = 0
    totalize (x:xs)
      = x + 10 * totalize xs

digits :: Integer -> [Integer]
digits n
    | n < 10 = [n]
    | otherwise = digits d ++ [m]
    where
        (d,m) = n `divMod` 10

descendingOrder :: Integer -> Integer
descendingOrder x =
    number(reverse(sort (digits x)))

main :: IO()
main = print(descendingOrder 1021)