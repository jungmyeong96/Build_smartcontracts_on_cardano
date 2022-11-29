addNumbers x = x + x

-- main = print $ (addNumbers . sqrt) 25   -- .연산자는 우선순위가 매우 높습니다.  Function Application $보다 높음
main = print $ addNumbers . sqrt $ 25   -- Function Composition .연산자보다 우선 순위가 높은 유일한 유형은 함수 호출 또는 함수 적용입니다.
-- main = print $ addNumbers (sqrt 25) 와 동일합니다.
--id라는 blank 함수를 가지고 테스트