-- ex3 테이블 생성
CREATE TABLE ex3(
    col_null VARCHAR2(10), --NULL 허용
    col_nnot_null VARCHAR2(10) NOT NULL --NULL 불허
);

INSERT INTO ex3 VALUES ('', 'hello');
INSERT INTO ex3 VALUES ('안녕', ''); --null 에러

COMMIT;

SELECT * FROM ex3;

-- 테이블 삭제(DROP)
DROP TABLE ex3;