addNumbers x = x + x


x = 2

-- main = print $ addNumbers x -- $로 순서정하기
--main = print (addNumbers x) --괄호 또한 $와 같이 적용됩니다.
main = print $ addNumbers (sqrt 25)

