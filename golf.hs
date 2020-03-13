import Data.Map

golfterms_dict = [("par", 0), ("albatross", -3), ("eagle", -2), ("birdie", -1), ("bogey", 1), ("double-bogey", 2), ("triple-bogey", 3)]
    input_list = ["eagle", "bogey", "par", "bogey", "double-bogey", "birdie", "bogey", "albatross", "birdie", "par", "par", "par", "par", "par","bogey", "eagle", "bogey", "par"]

score ::[String] -> Integer
score s = sum [fromList golfterms_dict !x | x <- s]

scoreInPar :: Integer -> String
scoreInPar n | n == 0 =  "par"
             | n > 0  = show n ++ " over par"
             | n < 0  = show (abs n) ++ " under par"

main = do
print $ scoreInPar $ score input_list
