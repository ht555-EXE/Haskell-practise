import Data.Char (toUpper)

toJadenCase :: String -> String
toJadenCase js =
    unwords (map capitalize (words js))
    where
        capitalize (x:xs) = toUpper x: xs

main :: IO()
main = print(toJadenCase "How can mirrors be real if our eyes aren't real")