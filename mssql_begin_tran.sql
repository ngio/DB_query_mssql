
MS-SQL은 기본 설정이 AUTO_COMMIT으로 되어있습니다.

INSERT, UPDATE, DELETE 등 명령어를 사용할 때 COMMIT 명령어를 입력할 필요가 없습니다.

그렇기 때문에 UPDATE, DELETE 쿼리 수행 중 실수를 하게 된다면... 지옥을 경험할 수도 있습니다.. ㅠㅠ

 

예를 들어서 MEMBER라는 테이블이 있다고 가정하겠습니다. 멤버 테이블의 회원 삭제는 이력을 남기기 위해서 소프트 delete처리를 합니다. 이런일이 생기면 안되겠지만, 쿼리를 사용하여 회원을 삭제한다고 가정하겠습니다. 

UPDATE MEMBER
SET DELETED = 1
WHERE MEMBER_SEQ = 1;
 

위와 같이 정상적으로 작성하면 좋겠지만, 우리는 사람이라 가끔 실수를 하곤 합니다.

UPDATE MEMBER
SET DELETED = 1;
WHERE MEMBER_SEQ = 1;
뭐가 잘못됐는지 확인이 되시나요??

생각만해도 지옥문에 들어가기 전이네요...

쿼리는 진짜 아무리 숙련된 사람이라도 실수할 수 있기 때문에 조심해야 한다고 생각합니다.

 

이럴 때 MS-SQL에서는 BEGIN TRAN이라는 명령어를 제공합니다.

BEGIN TRAN
UPDATE MEMBER
SET DELETED = 1
WHERE MEMBER_SEQ = 1;
이렇게 사용하고

SELECT * FROM MEMBER
WHERE MEMBER_SEQ = 1;
 

위와 같이 검증 쿼리로 확인하여,

정상이라면 COMMIT TRAN; 으로  내용을 반영해주면 됩니다.

 

반대로 잘못 반영되었을 땐

ROLLBACK TRAN;으로 트렉젝션을 롤백하면 됩니다.

 

BEGIN TRAN을 사용하고는 꼭! COMMIT TRAN 이나 ROLLBACK TRAN을 사용해줘야 합니다.

만약 잊고, 사용하지 않았다면.. TRANSACTION이 계속 잡혀 있는 상태여서 DB가 정상 동작하지 않습니다. 

검증하는 시간도 그만큼 길면 안되겠지요.
