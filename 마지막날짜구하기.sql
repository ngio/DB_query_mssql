SELECT EOMONTH('2020-09-09') AS result

  
SELECT DATEADD (DAY, -1, DATEADD (MONTH, DATEDIFF (MONTH, 0, '2020-09-09') + 1, 0)) AS result


SELECT DATEADD(MONTH, DATEDIFF(MONTH, 0, '2020-09-09') + 1, 0) - 1 AS result
