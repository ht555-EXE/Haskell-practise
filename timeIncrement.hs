timeIncrement :: (Int, Int, Int) -> (Int, Int, Int)
timeIncrement (hr, min, sec)
    | hr == 23 && min == 59 && sec == 59 = (0,0,0)
    | min == 59 && sec == 59 = (hr+1, 0, 0)
    | sec == 59 = (hr, min+1, 0)
    | otherwise = (hr, min, sec+1)

main :: IO()
main = print (timeIncrement (23, 59, 59))