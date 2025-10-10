import Data.List

-- compares head of list to being in tail, if not in list, recurse the tail of the list
different :: Eq a => [a] -> Bool
different []
    = True
different (x:xs)
    | x `elem` xs = False
    | otherwise = different xs

-- compares list to the list with duplicates removed, if the lists are the same, all items in the list are different
differentFancy :: Eq a => [a] -> Bool
differentFancy xs
    = xs == nub xs