-- 다중 데이터 유형을 작성

data Coordinate = Pt Int Int deriving Show -- deriving으로 Show의 파생설정을 해야데이터를 출력가능 Pt라는 커스텀 타입으로 Coordinate라는 커스텀 타입정의

coordinate :: Coordinate

coordinate = Pt 1 1

coordinateFunction :: Coordinate -> Coordinate

coordinateFunction (Pt a b) = Pt (a * 2) (b * 2)

main = print $ coordinateFunction coordinate
