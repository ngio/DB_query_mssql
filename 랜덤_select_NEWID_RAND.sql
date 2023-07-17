-- MSSQL] 랜덤 (무작위) Select

	
Select Top 10 * From 테이블명 Order by NEWID()


-- RAND() 난수 발생
select RAND() as rnd;
select convert(int, RAND()*100) as r1 -- 3자리 정수 추출 (0~999)
     , RIGHT(RAND(), 5)         as r2 --  임의의 5자리 숫자 추출

--정수형 난수
--최대값와 최소값을 포함할 때  
declare @max -- 최대값
declare @min -- 최소값
 
SELECT CONVERT(INT, ((@max + 1) - @min) * RAND()  + @min)
