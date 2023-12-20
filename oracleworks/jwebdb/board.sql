--board 테이블 생성
CREATE TABLE board(
    bno             NUMBER PRIMARY KEY,
    title           VARCHAR2(100) NOT NULL,
    content         CLOB NOT NULL,
    createdate      TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate      TIMESTAMP,
    hit             NUMBER DEFAULT 0,
    filename        VARCHAR2(50),
    id              VARCHAR2(20) NOT NULL,
    FOREIGN KEY(id) references member(id) ON DELETE CASCADE
);
CREATE SEQUENCE seq_bno NOCACHE;

insert into board(bno, title, content, id)
values(seq_bno.NEXTVAL, '글제목1', '글내용입니다.1', 'khit');
insert into board(bno, title, content, id)
values(seq_bno.NEXTVAL, '글제목2', '글내용입니다.', 'today');
insert into board(bno, title, content, id)
values(seq_bno.NEXTVAL, '글제목3', '글내용입니다.', 'oyl');
insert into board(bno, title, content, id)
values(seq_bno.NEXTVAL, '글제목4', '글내용입니다.', 'ljh');

SELECT * FROM board;

--재귀 복사
insert into board(bno, title, content, id)
(select seq_bno.NEXTVAL, title, content, id from board);

--  페이지 처리
select rownum, board.*
from board
where rownum >= 11 and rownum <= 20;

--  페이지 처리(서브쿼리)
select *
from (select rownum RN, board.* from board order by bno desc)
where RN >= 21 and RN <= 30;

--  페이지 처리(서브쿼리 - deep2단계)
select *
from (select rownum RN, bo.* from (select * from board order by bno desc) bo) -- 별칭 bo 생성
where RN >= 21 and RN <= 30;

--전체 게시글 수
select count(bno) as total from board;

-- 문자열 검색(제목, 아이디)
select * from board where id LIKE 'today';

select * from board;
delete from board where bno = 3;
update board set title = '공지사항', content='공지사항 수정입니다.' where bno = 1;

-- 번호가 3번인 게시글의 조회수를 1증가
update board set hit = hit+1 where bno = 2;
delete from board;
drop sequence seq_bno;
select * from member;

commit;
rollback;

drop table seq_bno;