-- user sample
DROP USER c##sample CASCADE;

-- user 및 비밀번호 생성 - (user 계정 : sample, 비번 pw1234)
CREATE USER c##sample IDENTIFIED BY pw1234;

-- user 비밀번호 변경
ALTER USER c##sample IDENTIFIED BY pw12345;

-- SESSION 권한(로그인-인증) 부여
GRANT CREATE SESSION TO c##sample;

-- DB의 테이블 생성 권한 부여
GRANT CREATE TABLE, RESOURCE TO c##sample;

-- 데이터 조작할 모든 권한 부여 - DML(삽입,조회,수정,삭제)
GRANT CONNECT, DBA TO c##sample;