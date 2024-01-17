[MSSQL] 테이블 정보 확인

테이블 컬럼 정보 확인

select * from information_schema.columnswhere table_name = '' 

테이블 제약조건 확인 

select*from INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGEwhere table_name = ''

테이블 인덱스 확인 확인 

SELECT * FROM sys.dm_db_index_physical_stats
