module Main where

main :: IO ()

-- setDate date = putStrLn date --함수명 앞에 argument를 추가가능

-- dateArgument = "July 1st, 2022"

-- main = setDate dateArgument


setDate day month year = month ++ " " ++ day ++ ", " ++ year -- 문자열을 합칠땐 ++을 사용 실제 더하기 연산은 +

day = "1st"
month = "July"
year = "2022"

main = putStrLn $ setDate day month year --함수의 리턴값을 받기 위해서 $으로 정의
{- $으로 함수의 실행 순서를 정해줌
    $가 없으면 왼쪽에서 오른쪽으로 실행순서를 가지기 때문에 argu오류를 내뱉음
-}