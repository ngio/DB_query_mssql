[MS-SQL] mssql sum / 5  소수점 한자리까지.   avg  소수점 한자리



MSSQL에서 합산(SUM) 또는 평균(AVG) 결과를 5로 나누고 결과를 소수점 한 자리까지 표현하는 방법을 알아보겠습니다. 이를 위해 CAST 또는 ROUND 함수를 사용하여 결과를 적절히 포맷할 수 있습니다.

1. SUM 후 5로 나누기
예를 들어, Sales 테이블에서 모든 제품의 Quantity 합을 구한 후 그 결과를 5로 나누고 소수점 한 자리까지 반올림하는 쿼리는 다음과 같습니다.

sql
Copy code
SELECT 
    CAST(SUM(Quantity) / 5.0 AS DECIMAL(10, 1)) AS SumDividedBy5
FROM 
    Sales;
이 쿼리에서 SUM(Quantity) / 5.0는 Quantity의 합을 5로 나누고, CAST(... AS DECIMAL(10, 1))는 결과를 소수점 한 자리까지 포맷합니다. 5.0을 사용하는 것은 결과가 실수로 처리되도록 하기 위함입니다.

2. AVG 결과 소수점 한 자리까지
Sales 테이블에서 모든 제품의 Quantity 평균을 계산하고 소수점 한 자리까지 표시하는 쿼리는 다음과 같습니다.

sql
Copy code
SELECT 
    CAST(AVG(Quantity) AS DECIMAL(10, 1)) AS AverageQuantity
FROM 
    Sales;
또는 ROUND 함수를 사용하여 같은 결과를 얻을 수 있습니다.

sql
Copy code
SELECT 
    ROUND(AVG(Quantity), 1) AS AverageQuantity
FROM 
    Sales;
ROUND 함수는 첫 번째 인자로 받은 값을 두 번째 인자로 지정한 소수점 자리까지 반올림합니다.

위의 방법을 사용하여 SQL 쿼리 결과의 수치를 원하는 소수점 자리까지 조절할 수 있습니다. 이를 통해 보다 정확하고 의도한 형태의 데이터 분석 결과를 얻을 수 있습니다.
