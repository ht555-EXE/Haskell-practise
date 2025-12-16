scramble :: String -> [Int] -> String
scramble s [] = ""
scramble s (x:xs) = 
    [s !! x] ++ scramble s xs

main :: IO ()
main = print (scramble "abcd" [0, 3, 1, 2])