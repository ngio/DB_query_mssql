# [MSSQL] mssql ERD를 지원하는 오픈소스 프로그램


MSSQL(마이크로소프트 SQL Server)에서 ERD(Entity Relationship Diagram) 생성을 지원하는 오픈소스 프로그램 중에서 추천할 수 있는 도구들은 다음과 같습니다:

✅ 1. DBeaver
라이선스: Apache License 2.0 (Community Edition 기준)

특징:

다양한 DB(MSSQL 포함) 지원

ERD 자동 생성 및 편집 가능

SQL 스크립트와 구조 동시 확인

플러그인 확장 가능

장점:

사용 편리

오픈소스이지만 기능이 풍부

웹사이트: https://dbeaver.io

✅ 2. DBDiagram.io (ERD 모델링 지원 웹 도구)
라이선스: 무료 온라인 도구 (오픈소스는 아니지만, 무료이고 간단하게 사용 가능)

특징:

간단한 마크다운 형식으로 ERD 작성

SQL에서 가져오기/내보내기 가능

협업 지원

장점:

웹 기반으로 설치 없이 사용

웹사이트: https://dbdiagram.io

✅ 3. SQLPad
라이선스: MIT License

특징:

쿼리 실행 + 시각화 + ERD 기능 지원 (약간 제한적)

MSSQL 포함 다양한 DB 연동

웹 기반 SQL 편집기

웹사이트: https://github.com/sqlpad/sqlpad

✅ 4. PgModeler (PostgreSQL 전용이나 일부 호환 시도 가능)
MSSQL 직접 지원은 아니나, ERD 기능 강력

오픈소스 구조 파악, 커스텀 DB 작업용으로 참고 가능

https://pgmodeler.io/

💡 기타 유료이지만 강력한 대안 (참고용)
dbForge Studio for SQL Server (유료, ERD 생성 좋음)

DataGrip (JetBrains, 유료 IDE, 강력한 ERD 지원)

추천 정리:
도구	오픈소스	ERD 생성	MSSQL 지원	설치/웹
DBeaver	✅	✅	✅	설치형
SQLPad	✅	제한적	✅	웹 기반
DBDiagram.io	❌ (무료)	✅	✅ (SQL import)	웹 기반

🔧 추천 조합:
정식 업무 및 ERD 필요: DBeaver

간단한 ERD 또는 공유 목적: DBDiagram.io

웹 기반 쿼리툴 + 시각화: SQLPad

---


오픈 소스 도구들은 상용 도구만큼의 강력한 기능이나 완벽한 사용자 경험을 제공하지 않을 수도 있지만, 비용 없이 데이터베이스 스키마를 시각화하고 설계하는 데 매우 유용합니다.

다음은 MSSQL ERD를 지원하는 주요 오픈 소스 프로그램들입니다:

DBFlow (추천: 가볍고 설치 없이 웹 기반 사용 가능)

특징: 웹 기반의 데이터베이스 스키마 시각화 도구입니다. 데이터베이스 연결 정보를 입력하면 자동으로 ERD를 생성해줍니다. MSSQL을 포함한 다양한 데이터베이스를 지원합니다. 별도의 설치 없이 웹 브라우저에서 사용할 수 있다는 큰 장점이 있습니다.
장점:
설치 불필요 (웹 기반)
다양한 DB 지원 (MSSQL, MySQL, PostgreSQL, Oracle 등)
직관적인 ERD 시각화
스키마 내보내기/가져오기 기능
단점: 오픈 소스 버전의 기능이 상용 툴만큼 강력하지 않을 수 있습니다.
URL: https://www.dbflow.io/ (GitHub 저장소를 찾아보세요)
DBeaver Community Edition (추천: 다기능 통합 DB 툴)

특징: 가장 인기 있고 강력한 오픈 소스 범용 데이터베이스 관리 도구 중 하나입니다. 데이터베이스 탐색, SQL 편집, 데이터 조작뿐만 아니라 ERD 생성 기능까지 제공합니다. MSSQL에 대한 강력한 지원을 포함합니다.
장점:
매우 광범위한 데이터베이스 지원 (MSSQL, MySQL, PostgreSQL, Oracle, DB2, SQLite 등 거의 모든 DB)
통합 개발 환경 (IDE)과 같은 기능 제공 (SQL 편집기, 데이터 뷰어/편집기)
객체 브라우저에서 ERD 생성 기능 내장 (테이블을 선택하고 "Diagram" 탭 확인)
다양한 운영체제 지원 (Windows, macOS, Linux)
단점: ERD 기능 자체에 특화된 툴은 아니므로, 전문적인 ERD 설계 툴보다는 기능이 제한적일 수 있습니다.
URL: https://dbeaver.io/
SQL Developer Data Modeler (Oracle 제공, MSSQL 사용 가능)

특징: Oracle에서 제공하는 무료 데이터 모델링 도구이지만, Oracle 데이터베이스뿐만 아니라 MSSQL, MySQL 등 다양한 데이터베이스의 모델링을 지원합니다. 역방향 엔지니어링(Reverse Engineering)을 통해 기존 데이터베이스에서 ERD를 생성하는 데 매우 강력합니다.
장점:
매우 강력한 데이터 모델링 기능
다양한 DB 지원
논리 및 물리 모델링 모두 지원
스키마 동기화, 리포트 생성 등 전문적인 기능
단점: 설치 파일이 크고, Oracle 기반이라 MSSQL 전용 사용자에게는 인터페이스가 익숙하지 않을 수 있습니다.
URL: https://www.oracle.com/database/technologies/appdev/sql-developer-data-modeler.html (오픈 소스는 아니지만 무료입니다.)
MySQL Workbench (MySQL 전용이지만, 다른 DB의 ERD를 생성하는 기능도 일부 있음)

특징: 원래 MySQL을 위한 강력한 시각적 설계 도구이지만, 범용 데이터 모델링 기능도 포함하고 있습니다. MSSQL에서 직접 역방향 엔지니어링하는 기능은 제한적일 수 있으나, 일반적으로 ERD를 그리는 데는 사용될 수 있습니다. MSSQL 전용으로는 추천하지 않습니다.
선택 가이드라인:

가장 쉽고 빠르게 ERD를 보고 싶다면: DBFlow를 먼저 시도해보세요. 웹 기반이라 설치가 필요 없고 접근성이 좋습니다.
ERD 생성뿐만 아니라 SQL 쿼리 작성, 데이터 조회 등 통합적인 DB 관리 기능이 필요하다면: DBeaver Community Edition이 최적의 선택입니다. 대부분의 개발자들에게 사랑받는 도구입니다.
전문적인 데이터 모델링 및 설계 기능이 필요하다면: SQL Developer Data Modeler를 고려해볼 수 있습니다. 무료이지만 엔터프라이즈급 기능을 제공합니다.
이 도구들을 통해 MSSQL 데이터베이스의 ERD를 효과적으로 시각화하고 관리할 수 있을 것입니다.

