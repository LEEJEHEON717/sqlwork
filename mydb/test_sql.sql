-- 실습문제
-- 마당 서점의 고객 테이블을 검색하시오

-- 1. 모든 고객의 이름과 주소를 검색하시오
SELECT NAME, address FROM customer;

-- 2. 모든 고객의 이름, 주소, 전화번호를 검색하시오
SELECT NAME, address, phone FROM customer;

-- 3. 주소가 '영국'인 고객을 검색하시오
SELECT * FROM customer
WHERE address LIKE '%영국%';

-- 4.1 고객의 이름이 '김연아' 혹은 '안산'인 고객을 검색하시오
SELECT * FROM customer
WHERE name in ('김연아', '안산');

-- 4.2 고객의 이름이 '김연아' 혹은 '안산'인 고객을 검색하시오
SELECT * FROM customer
WHERE name = '김연아' or name = '안산';

-- 5. 주소가 '대한민국'이 아닌 고객을 검색하시오
SELECT * FROM customer
WHERE address NOT LIKE '대한민국%';

-- 6.1 전화번호가 없는 고객을 검색하시오
SELECT * FROM customer
WHERE phone is NULL;

-- 6.2 전화번호가 있는 고객을 검색하시오
SELECT * FROM customer
WHERE phone is NOT NULL;

-- 7. 고객을 이름순으로 정렬하시오(오름차순)
SELECT * FROM customer
ORDER BY name asc; --asc 생략가능함

-- 8. 고객의 총 인원수를 구하시오
SELECT COUNT(*) AS 총인원수
FROM customer;