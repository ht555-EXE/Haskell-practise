alpha :: ([a], [b]) -> [(a, b)]
alpha ([],ys)
    = []
alpha (xs,[])
    = []
alpha (x:xs, y:ys)
    = (x,y) : alpha (xs,ys)

main :: IO()
main = print(alpha ([1,2,3,4,5], [6,7,8,9]))