-- 1. 먼저 현재값과 update해야할 값을 조회해본다.
select a.컬럼1, b.컬럼1
        ,a.컬럼2, b.컬럼2
        ,a.컬럼3, b.컬럼3
        ,a.컬럼4, b.컬럼4
 FROM 테이블1 a inner join 테이블2 b on a.컬럼1 =b.컬럼2 and a.컬럼1_1=b.컬럼2_2
 where a.컬럼 = 조건


-- 2. ,을 =로 바꾸주고 바로 update 해준다.
update a set a.컬럼1 = b.컬럼1
                 ,a.컬럼2 = b.컬럼2
                 ,a.컬럼3 = b.컬럼3
                 ,a.컬럼4 = b.컬럼4
FROM 테이블1 a inner join 테이블2 b on a.컬럼1 =b.컬럼2 and a.컬럼1_1=b.컬럼2_2
where a.컬럼 = 조건

