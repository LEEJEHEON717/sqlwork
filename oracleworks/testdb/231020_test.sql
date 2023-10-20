아래의 사례를 읽고 에러가 발생한 원인을 찾고 그 원인을 해결하시오. (4개 문제)

1. 사례
사용자 계정을 만들기 위해 일반 사용자 계정인 TEST 계정으로 접속하여 계정이 SAMPLE 비밀번호가 1234인
계정을 생성하기 위해 CREATE USER SAMPLE; 를 실행하니 정상적으로 실행이 되지 않았다.

2. 사례
위사례의 문제점을 고치고 GRANT CREATE SESSION TO SAMPLE; 로 인증 권한을 부여한 뒤
접속을 하고 테이블을 (CREATE 문) 생성하려는데 생성이 되지 않았다.

3. 사례
위사례의 문제점을 고치고 계정에 접속하여 테이블을 생성하고 데이터를 삽입(INSERT 문)하려는데 오류가 발생하였다.

4. 사례
아래 테이블이 있다는 가정하에 다음 조건에 맞는 사원을 조회하려고 SQL구문을 작성했는데
제대로된 결과가 출력되지 않았다. SQL구문을 보고 문제를 찾고 원인에 작성하고 제대로된 SQL문을 조치사항에 작성하시오.


검색조건

DEPT_CODE가 D9 이거나 D6 이고 SALARY 가 300만원 이상인 사원의 EMP_NAME, EMP_NO, DEPT_CODE, SALARY 를 조회
작성된 쿼리구문
SELECT EMP_NAME, EMP_NO, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE == "D9" || DEPT_CODE == "D6"
사례를 구분하여 원인과 문제를 해결하기 위한 조치를 원인과 조치내용란에 각각 기술하시오.

==============================================================================================================

CREATE USER SAMPLE IDENTIFIED BY pw1234;

GRANT CREATE SESSION TO c##SAMPLE;

GRANT CREATE TABLE, RESOURCE TO c##SAMPLE;

GRANT CREATE, DBA TO c##SAMPLE;

원인: CREATE USER SAMPLE; 쿼리를 실행할 때 비밀번호를 설정하지 않음
//CREATE USER SAMPLE IDENTIFIED BY 1234;

원인: SAMPLE 사용자가 CREATE 문을 실행할 수 있는 권한이 없음
CREATE 문을 실행하려면 CREATE TABLE 권한이 필요
//GRANT CREATE TABLE, RESOURCE TO SAMPLE;

원인: SAMPLE 사용자가 테이블을 생성하려고 할 때 필요한 테이블스페이스에 대한 권한이 없거나, 
테이블에 삽입 권한이 없음
/*SAMPLE 사용자에게 필요한 테이블스페이스에 대한 권한을 부여,
삽입 작업을 하려는 테이블에 대한 INSERT 권한을 SAMPLE 사용자에게 부여*/


SELECT EMP_NAME, EMP_NO, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE = 'D9' OR DEPT_CODE = 'D6'
AND SALARY >= 3000000;




