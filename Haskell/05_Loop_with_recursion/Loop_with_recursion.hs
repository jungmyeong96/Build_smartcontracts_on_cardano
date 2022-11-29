--하스켈의 loop는 일반적인 프로그래밍 언어와 많이 다릅니다.
--엄밀히 얘기하면 하스켈은 loop가 존재하지 않고, 재귀를 통해 loop를 구현합니다.

main :: IO()
 

main = do --monad (함수형 프로그래밍)에서 사용되는 Syntatic sugar 들여쓰기 필수
    userInput <- getLine  --사용자 입력을 받아 userInput에 저장
    print userInput
    main --재귀적으로 main을 호출

{-
    일반적인 프로그래밍에서는 loop를 무한으로 돌릴 시, overrun이 발생하여
    스택이 꽉 차서 에러를 발생할 수 있지만, haskell은 그 부분에 대해 걱정할 필요가 없습니다.
    (immutability loops in an imperative language)
    haskell은 컴파일러가 재귀를 루프로 전환할 수 있습니다. (tail recursion optimization)
-}
