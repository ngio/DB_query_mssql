-- 반복문에 사용될 변수 선언
DECLARE @idx INT

-- 기본 값 설정
SET @idx = 1

-- FOR문 구현 (=for i=1; i<101 i++)
-- 해당 컬럼에 1부터 100까지의 숫자를 입력
WHILE (@idx < 101)
BEGIN
    INSERT INTO iNumberTable (iNum) values (@idx)
    SET @idx = @idx + 1
END 
