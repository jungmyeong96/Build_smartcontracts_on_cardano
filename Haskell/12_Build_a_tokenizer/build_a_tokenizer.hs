-- 앞서 배운 Cons와 배열의 재귀적 사용을 토대로 문자열을 토큰화할 것 입니다.

import Data.Char -- isDigit 함수를 사용하기 위해 라이브러리를 불러옴

data Token = Digit | Alpha  deriving (Show, Eq) -- No instance for (Show Token) arising from a use of 
    --파생처리를 하지않으면 인스턴스화 하지않은 값을 출력할 수 없음

tokenize :: String -> [Token]

tokenize (c : rest) =
    if isDigit c
        then Digit : tokenize rest
        else Alpha : tokenize rest

tokenize [] = []

main = print $ tokenize "account112233"