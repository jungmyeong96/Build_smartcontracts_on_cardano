--내장된 배열 타입에 대해 학습할 것입니다.
-- 이전에는 커스텀 목록유형을 정의하여 사용하였지만, 실제로는 하스켈 자체에 내장목록을 만드는 자체구문을 사용하면 됩니다.

list = [1, 2, 3]

getSum :: [Int] -> Int

getSum (i : rest) = i + getSum rest

getSum [] = 0

main = do
    print $ getSum list
