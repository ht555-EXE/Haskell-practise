highAndLow :: String -> String
highAndLow "" = ""
highAndLow s = 
    let strNums = words s
        nums = map read strNums :: [Int]
    in show (maximum nums) ++ " " ++ show (minimum nums)
    
main :: IO ()
main = print(highAndLow "1 2 3 4 5")