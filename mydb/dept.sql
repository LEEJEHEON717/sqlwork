-- 부서 테이블(dept)
CREATE TABLE dept(
    deptid    NUMBER PRIMARY KEY,  --기본키
    deptname VARCHAR2(20) NOT NULL, --NULL 불허
    location VARCHAR2(20) NOT NULL
);

-- 부서 자료 추가 --
INSERT INTO dept(deptid, deptname, location)
VALUES (10, '전산팀', '서울');
INSERT INTO dept(deptid, deptname, location)
VALUES (20, '관리팀', '인천');
INSERT INTO dept(deptid, deptname, location)
VALUES (30, '마케팅팀', '수원');

-- 부서 테이블을 생성하고 자료를 추가한 후 아래의 결과대로 출력하시오

SELECT -- deptname 부서이름,
       -- LENGTH(deptname) 글자수,
       SUBSTR(deptname, 1, LENGTH(deptname)-1) 팀명1,
       REPLACE(deptname, '팀', '') 팀명2
FROM dept;