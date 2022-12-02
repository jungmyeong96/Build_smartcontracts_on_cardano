data Operator = Add | Minus | Multiply | Divide deriving (Show, Eq)

operator :: Char -> Operator

operator o | o == '+' = Add | o == '-' = Minus | o == '*' = Multiply | o == '/' = Divide -- | true/false  = ? guard를 이용하여 if문처럼 표현 switch구문과 비슷한것 같다

main = print $ operator '+'