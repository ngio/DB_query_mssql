    -- TestProc 테스트 프로시저 생성 
    CREATE PROC [dbo].[TestProc]
        @pTestId    NVARCHAR(200) = ''
      , @oResult    NVARCHAR(50)  = '' OUTPUT
      , @oMessage   NVARCHAR(500) = '' OUTPUT
    AS
    	SET NOCOUNT ON;
    
    	-- 파라미터 출력
    	Print 'TestId : ' + @pTestId
    
    	-- OUTPUT 지정
    	SET @oResult = 'OK'
    	SET @oMessage = '성공'
       
    	-- RETURN 사용시 OUTPUT를 반환한다.
    	-- RETURN



 -- 변수지정
 
DECLARE @pTestId NVARCHAR(200), @oResult NVARCHAR(50), @oMessage NVARCHAR(500)

-- 프로시저 실행

EXEC [dbo].[TestProc] @pTestId = 'ID값', @oResult = @oResult OUTPUT, @oMessage = @oMessage OUTPUT

-- OUTPUT 조회

SELECT @oResult AS '결과'

SELECT @oMessage AS '메세지'
