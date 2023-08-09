-- DBCC CHECKIDENT 
DBCC CHECKIDENT(Transact-SQL)
https://learn.microsoft.com/ko-kr/sql/t-sql/database-console-commands/dbcc-checkident-transact-sql?view=sql-server-ver16



-- IDENTITY 컬럼의 시작 값을 초기화 해야할 때 DBCC CHECKIDENT 명령을 사용하여 초기화 할 수 있다.

 

 -- 현재 IDENTITY 값 확인

 DBCC CHECKIDENT('IDENT_TABLE', NORESEED)

-- DBCC CHECKIDNET('테이블명', NORESEED) 는 테이블의 현재 IDENTITY 값을 확인하는 명령어이다.

 

 -- IDENTITY 값 변경

 DBCC CHECKIDENT('IDENT_TABLE', RESEED, 1000)

-- DBCC CHECKIDENT('테이블명', RESEED, 초기화 값) 는 현재 값으로 사용할 새 값으로 초기화하는 명령어이다.

-- 위의 경우 현재 값을 1000으로 초기화함으로써 새 값을 추가하면 1001이 삽입된다.
