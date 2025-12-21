import qualified Data.Set as Set
import Data.Char (isSpace)

isPangram :: String -> Bool
isPangram str = 
    let cleanStr = filter (not.isSpace) str
    in length cleanStr == Set.size(Set.fromList cleanStr)