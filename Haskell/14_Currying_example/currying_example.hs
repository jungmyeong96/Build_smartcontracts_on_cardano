--Currying은 여러 개의 인자를 받는 함수를 단일 인자를 받는 함수의 체인을 이용하는 방식으로 바꾸는 것을 의미합니다.
-- 위 course에서는 다중 변수를 튜플형태 또는 데이터 타입을 정의한 형태로 받았었는데, 아래와 같이 currying을 통해 다변수를 받을 수 있습니다.
isIn c (d : rest) =
    if c == d
        then True
        else isIn c rest

isIn _ [] = False

isInCurry :: [Char] -> Bool

isInCurry = isIn 'a'

main = print $ isInCurry "abc"
