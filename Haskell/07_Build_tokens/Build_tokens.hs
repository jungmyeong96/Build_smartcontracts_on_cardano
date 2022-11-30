--custom 토큰을 만들 것입니다.

data Token = TokenString String | TokenInt Int deriving (Show, Eq) -- 문자열과 정수를 타입으로 받는 토큰유형을 정의해줍니다.
--Int유형은 Show와 Eq유형에서 파생됩니다.
-- Show 타입 클래스의 show는 인스턴스를 문자열로 표현해줍니다.
-- Eq 타입은 타입이 서로 같은지 검사합니다.

printToken :: Token -> String

printToken (TokenString myString) = myString

printToken (TokenInt myInt) = show myInt --Show유형에서 파생되기 때문에 show키워드를 사용할 수 있습니다.

-- 사용자 정의 데이터 토큰 생성자
token :: Token

-- 사용자 정의 데이터 유형인 토큰을 인스턴스화
token = TokenInt 4 -- 커스텀 데이터 형식의 경우 변수의 type을 명확히 써줘야함.

test :: Int

test = 4

tokenString  = TokenString "Hello"

main = do 
    print $ printToken token --함수의 리턴값에 따라 token을 String자료형으로 반환
    print token -- token자체를 생성할 경우, 자료형과 함께 실제 값이 출력
    print test
    print $ printToken tokenString
    print tokenString






