-- 리스트 데이터 유형을 정의

data List = Cons String List | Empty -- : (Cons)를 사용하여 표현 배열 규칙
-- String을 list로 가지던지 비어 있을 수 있음.
-- 빈 list를 생성한 뒤, 값을 넣어줄 것입니다.

emptyList, oneList, twoList :: List

emptyList = Empty -- 비어있는 list

oneList = Cons "Hello" emptyList  -- Cons로 생성한 Hello를 emptyList에 삽입

twoList = Cons "Mammoth" oneList -- 위와 마찬가지로  Cons로 생성한 String을 oneList에 삽입

-- twoList = Cons "Mammoth" Cons "Hello" emptyList -- 아래와 같이 삽입할 수도 있지만 길어짐.

-- list를 사용하는 함수

hasOneOnly :: List -> Bool

hasOneOnly (Cons _ Empty) = True --list에 값이 있는지 없는지 체크 _(wildcard) 수에 따라 체크함

-- hasOneOnly (Cons _ _ Empty) = True --list에 값이 두개인경우

hasOneOnly _ = False --다른 구조를 가질 경우 False처리

main = do
    print $ hasOneOnly emptyList -- list 내부가 비어있기 때문에 False반환
    print $ hasOneOnly oneList -- 1개가 있으므로 True반환
    print $ hasOneOnly twoList -- list 내부에 2개가 있으므로 False반환
