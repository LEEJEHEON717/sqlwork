-- 숫자 타입 내장 함수
-- 절대값 구하기 : ABS()
-- 제공 테이블 : dual
SELECT ABS(-10) FROM dual;

-- 반올림 : ROUND(숫자, 자리수)
SELECT ROUND(127.67, 1) FROM dual;  -- 소수 첫째 자리
SELECT ROUND(127.67, 0) FROM dual;  -- 0의 자리
SELECT ROUND(127.67, -1) FROM dual;  -- 일의 자리로 반올림
SELECT ROUND(127.67, -2) FROM dual;  -- 십의 자리로 반올림

-- 버림(내림) : TRUNC(숫자, 자리수)
SELECT TRUNC(127.67, 1) FROM dual;  -- 소수 첫째 자리까지 표시(이후 버림)
SELECT TRUNC(127.67, 0) FROM dual;
SELECT TRUNC(127.67, -1) FROM dual;
SELECT TRUNC(127.67, -2) FROM dual;

-- 버림(내림) : FLOOR(숫자, 자리수) - 정수로 내림한다.
SELECT FLOOR(127.67) FROM dual;  -- 소수 첫째 자리까지 표시(이후 버림)
SELECT FLOOR(127.6) FROM dual;

-- 거듭제곱 : POWER(밑, 지수)
SELECT POWER(2, 3) FROM dual;

-- 문자 타입
-- 소문자로 변경하기 : LOWER('ABCD')
-- 대문자로 변경하기 : UPPER('adcd')
SELECT LOWER('ABCD') FROM dual;
SELECT UPPER('adcd') FROM dual;

-- 문자열의 일부분을 추출 : SUBSTR(문자열, 인덱스, 자리수)
-- 인덱스는 1번에서 시작
SELECT SUBSTR('abcd', 1, 2) FROM dual;

-- 문자열을 찾아 바꾸기 : REPLACE(문자열, 변경 전 문자, 변경 후 문자)
SELECT REPLACE('abcd', 'c', 'e') FROM dual;

-- 문자열의 길이 : LENGTH(문자열)
SELECT LENGTH('abcd') FROM dual;

-- 마스킹 처리
-- LPAD(문자열, 전체길이, 특정문자) - 왼쪽부터 특정문자로 채움
-- RPAD(문자열, 전체길이, 특정문자) - 오른쪽부터 특정문자로 채움
SELECT LPAD('today', 8, '*') FROM dual;
SELECT RPAD('today', 8, '*') FROM dual;

-- 주문테이블
-- 고객별 평균 주문 금액을 백원단위로 반올림하기
SELECT
    SUM(saleprice) AS 합계금액,
    COUNT(saleprice) AS 주문건수,
    ROUND(AVG(saleprice), -2) AS 평균주문금액
FROM orders
GROUP BY custid;

-- 도서 테이블
-- 책제목의 글자수
-- 책제목의 바이트수 : 한글-3byte, 영어, 특수문자-1byte
SELECT bookname,
       LENGTH(bookanme) AS 글자수,
       LENGTHB(bookname) AS 바이트수
FROM book;

-- '축구'를 '농구'로 변경하여 검색
SELECT bookname,
   REPLACE (bookname, '축구', '농구') AS bookname
FROM book;

-- 고객 테이블
-- 고객 이름별 같은 성을 가진 고객의 인원수를 구하시오
SELECT SUBSTR(name, 1, 1) 성,
       COUNT(*) 인원
FROM customer
GROUP BY SUBSTR(name, 1, 1);
    
    
    