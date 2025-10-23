iataConvert :: String -> String
iataConvert s =
    case s of
        "AMS" -> "Amsterdam"
        "CDG" -> "Paris"
        "FCO" -> "Rome"
        "GLA" -> "Glasgow"
        "LHR" -> "London Heathrow"
        "VCE" -> "Venice"
        _ -> "Unknown"

main :: IO ()
main = print (iataConvert "AMS")