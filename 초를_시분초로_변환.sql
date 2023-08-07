[MSSQL] 초를 시분초로 변환



select convert (varchar(8), dateadd (s, 148.3419954, '' ), 8) as '재생시간'
 

결과 : 00:02:28
