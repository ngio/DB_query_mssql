
-- CHARINDEX(Transact-SQL)
-- 이 함수는 두 번째 문자 식 내에서 하나의 문자 식을 찾고, 있는 경우 첫 번째 식의 시작 위치를 반환합니다.


DECLARE @document VARCHAR(64);  
SELECT @document = 'Reflectors are vital safety' +  
                   ' components of your bicycle.';  
SELECT CHARINDEX('bicycle', @document);  




-----------   
48
