findNeedle :: [String] -> String
findNeedle arr = needle 0 arr
    where
    needle _ []
        = "No Needle"
    needle n (x:xs)
        | x == "needle" = "found the needle at position " ++ show n
        | otherwise = needle (n+1) xs


