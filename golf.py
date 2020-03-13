score_dict = {"albatross" : -3 , "eagle" : -2 , "birdie" : -1  , "bogey" : 1 , "double-bogey" : 2 , "triple-bogey" : 3,"par" : 0}

scores_description = {1:"1 over par" , 2 : "2 over par" , 3:"3 over par"  , -2 : "-2 under par" , -1 : "1 under par" , 0 : "exact no of strokes specified" ,  }

input_list = ["eagle","bogey","par","bogey","double-bogey","birdie","bogey","par","birdie","par","par","par","par","par","bogey","eagle","bogey","par"]

score = [(score_dict[input_list[i]]) for i in range(18)]

print(sum(score))

scores_description[sum(score)]
