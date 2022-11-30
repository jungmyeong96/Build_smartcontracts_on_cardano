tupleFunction :: (Int, Int) -> (Int, Int)

tupleFunction (a, b) = (a * 2, b * 2) -- 튜플 함수는 튜플을 인수로 예상하고 튜플을 반환 유형으로 생각합니다

-- main = print $ tupleFunction (5, 4)


--함수 뿐만이 아니라 변수도 튜플 형식이 될 수 있습니다.

tuple :: (String, String)

tuple = ("Hello", "Goodbye")

main = print $ tuple



