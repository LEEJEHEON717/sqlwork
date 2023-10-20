다음 두 개의 테이블을 조인하여 EMPNO, EMPNAME, DEPTNO, DEPTNAME 컬럼을 ANSI 구문으로 조회하였을 때 문제가 발생했다. 
아래의 내용과 문제상황을 보고, 
1. 조인의 종류(10점) 와 
2. 해당 문제가 발생한 원인(20점) 을 원인 란에 기술하고
3. 해결할 수 있는 조치사항(20점), 
4. 조치사항이 적용된 ANSI 구문(20점), 
5. 오라클 전용 구문으로 변경(30점) 하여 조치내용 란에 기술하시오.

-- 사용한 테이블 생성 정보
CREATE TABLE DEPARTMENT(
DEPTCODE NUMBER,
DEPTNAME VARCHAR2(10)
);
CREATE TABLE EMPLOYEE(
EMPNO NUMBER,
EMPNAME VARCHAR2(10),
DEPTNO NUMBER
);

-- 실행한 조인 쿼리
SELECT EMPNO, 
       EMPNAME, 
       DEPTNO, 
       DEPTNAME
FROM EMPLOYEE JOIN DEPARTMENT 
USING (DEPTNO);

-- 문제 상황
ORA-00904: "DEPARTMENT"."DEPTNO": invalid identifier

-- ===========================================================
DROP TABLE DEPARTMENT;
DROP TABLE EMPLOYEE;

1. 조인의 종류(10점)
INNER JOIN (내부조인)?

2. 해당 문제가 발생한 원인(20점) 을 원인 란에 기술하고
?USING 절을 사용하여 조인하려는 두 테이블 사이에서 컬럼 이름이 일치하지 않아서 발생
USING 절은 두 테이블 간의 컬럼 이름이 동일해야함
EMPLOYEE 테이블의 DEPTNO와 
DEPARTMENT 테이블의 DEPTCODE가 
일치하지 않기 때문에 오류가 발생?

3. 해결할 수 있는 조치사항(20점)
USING 절을 사용하려면 두 테이블의 조인 컬럼 이름이 일치해야 함
따라서 두 테이블의 컬럼 이름을 일치시키거나, 다른 조인 방법을 고려해야 합니다.

4. 조치사항이 적용된 ANSI 구문(20점), 
SELECT b.EMPNO, 
       b.EMPNAME, 
       b.DEPTNO, 
       a.DEPTNAME
FROM DEPARTMENT a JOIN EMPLOYEE b
ON a.DEPTCODE = b.DEPTNO ;

5. 오라클 전용 구문으로 변경(30점) 하여 조치내용 란에 기술하시오.
SELECT b.EMPNO,
       b.EMPNAME, 
       DEPTNO, 
       b.DEPTNAME
FROM DEPARTMENT a JOIN EMPLOYEE b
USING (DEPTNO);











