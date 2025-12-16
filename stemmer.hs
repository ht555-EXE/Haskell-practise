stemmer :: [String] -> [String]
stemmer = map stem

stem :: String -> String
stem "" = ""
stem "ed" = ""
stem "ing" = ""
stem "ly" = ""
stem (x:xs) = x : stem xs

main :: IO()
main = print(stemmer ["being"])
