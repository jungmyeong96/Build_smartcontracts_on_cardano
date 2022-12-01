--재귀리스트 알고리즘을 구현할 것입니다.
-- 리스트에 있는 모든 정수의 값을 더한 값을 반환하는 함수를 구성해봅시다

data List = Cons Int List | Empty

addValues :: List -> Int

addValues (Cons i rest) = i + addValues rest

addValues Empty = 0 --재귀 종료 조건
-- 종료조건이 없을 시, Non-exhaustive patterns in function addValue에러가 발생

list = Cons 1 (Cons 10 (Cons 3 Empty))

main = do
    print $ addValues list