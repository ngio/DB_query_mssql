-- WHILE 루프를 사용한 반복 처리

DECLARE @MinValue INT, @MaxValue INT, @CurrentValue INT;

-- 최소값과 최대값 가져오기
SELECT @MinValue = MIN(Value), @MaxValue = MAX(Value)
FROM @Values;

SET @CurrentValue = @MinValue;

-- WHILE 루프를 사용하여 값 반복 처리
WHILE @CurrentValue <= @MaxValue
BEGIN
    -- 현재 값이 테이블 변수에 존재하는지 확인
    IF EXISTS (SELECT 1 FROM @Values WHERE Value = @CurrentValue)
    BEGIN
        -- 현재 값(@CurrentValue)을 사용하여 작업 수행
        SELECT * FROM your_table_name WHERE your_column_name = @CurrentValue;
    END

    -- 다음 값으로 이동
    SET @CurrentValue = @CurrentValue + 1;
END;
