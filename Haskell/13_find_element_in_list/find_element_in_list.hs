-- 배열의 요소찾기

isIn c (d : rest) = 
    if c == d
        then True
        else isIn c rest

isIn _ [] = False

main = do
    print $ isIn 4 [3, 4, 5]