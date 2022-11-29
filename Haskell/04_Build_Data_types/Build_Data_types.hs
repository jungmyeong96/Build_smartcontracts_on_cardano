-- 하스켈은 강력한 타입지정 언어이지만, 강력한 타입추론 또한 사용가능합니다.


-- function tokenize구현
-- 이중 콜론을 사용하여 유형문자열을 지정
-- tokenize :: String ->  String


-- 자체 사용자 지정 데이터 유형 구현
-- Dog 나 Cat을 생성자로 가지는 Animal type
data Animal = Dog | Cat

-- haskell은 데이터가 불변이므로 변경이 불가합니다.

getAnimalSound :: Animal -> String

getAnimalSound Dog = "woof" -- 함수를 인스턴스화 시킵니다.

getAnimalSound Cat = "meow"

main = print $ getAnimalSound Dog -- "woof"