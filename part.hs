part :: (a -> Bool) -> [a] -> ([a], [a])
part func list =
    (filter func list, filter (not . func) list)

main :: IO()
main = print (part even [1,2,3,4,5])