module Main where

main :: IO ()
main = putStrLn "Hello, Haskell!" --haskell은 무조건 main함수를 가져야합니다.
{-
    변수를 선언하는 것 처럼 보이지만 putStrLn라는 액션을 하도록 함수를 선언한 것이다.
    putStrLn :: String -> IO () :줄바꿈을 포함한 string의 출력
-}
