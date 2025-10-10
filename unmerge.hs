unmerge :: [(Int, Char)] -> ([Int], [Char])
unmerge [] = ([],[])
unmerge ((a,b):abs) 
    = (a:as, b:bs)
    where
        (as,bs) = unmerge abs



