

-- ROW_NUMBER 함수를 사용할 때는 ORDER BY를 필수로 사용해야하는데, 의미없는 (SELECT 1)을 부여하여 ORDER BY 없이 조회된 결과의 순번을 부여한다.


SELECT ROW_NUMBER() OVER(ORDER BY sal DESC) AS rownum
     , ename
     , job
     , sal
  FROM emp
 WHERE sal > 2000

-- ORDER BY에 정렬 컬럼을 사용하면 정렬 후 순번이 부여된다.

SELECT ROW_NUMBER() OVER(ORDER BY sal DESC) AS rownum
     , ename
     , job
     , sal
  FROM emp
 WHERE sal > 2000
