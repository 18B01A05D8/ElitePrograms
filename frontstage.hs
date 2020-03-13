import Data.List
import Data.Char

strictlyGreaterCond :: [Int] -> Bool
strictlyGreaterCond li = sort li == li

frontStage :: [[Int]] -> [Bool]
frontStage l =[strictlyGreaterCond i | i <- l]

isFrontStage :: [[Int]] -> Bool
isFrontStage l = all (True==) (frontStage l)

main = do
        let trans = transpose [[9, 2, 3],[4,5,6],[7,8,9]]
        print $ isFrontStage trans
