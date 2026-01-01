given a predicate p and a list xs, the function beta concatenates all items in the list together with each item in the list having p applied to them.
type: (a -> a) -> [a] -> [a]

given a predicate p and a list xs, the function beta concatenates all items in the list together which satisfy the predicate
type: (a -> Bool) -> [a] -> [a]