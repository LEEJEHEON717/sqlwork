--board ���̺� ����
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
values(seq_bno.NEXTVAL, '������1', '�۳����Դϴ�.1', 'khit');
insert into board(bno, title, content, id)
values(seq_bno.NEXTVAL, '������2', '�۳����Դϴ�.', 'today');
insert into board(bno, title, content, id)
values(seq_bno.NEXTVAL, '������3', '�۳����Դϴ�.', 'oyl');
insert into board(bno, title, content, id)
values(seq_bno.NEXTVAL, '������4', '�۳����Դϴ�.', 'ljh');

SELECT * FROM board;

--��� ����
insert into board(bno, title, content, id)
(select seq_bno.NEXTVAL, title, content, id from board);

--  ������ ó��
select rownum, board.*
from board
where rownum >= 11 and rownum <= 20;

--  ������ ó��(��������)
select *
from (select rownum RN, board.* from board order by bno desc)
where RN >= 21 and RN <= 30;

--  ������ ó��(�������� - deep2�ܰ�)
select *
from (select rownum RN, bo.* from (select * from board order by bno desc) bo) -- ��Ī bo ����
where RN >= 21 and RN <= 30;

--��ü �Խñ� ��
select count(bno) as total from board;

-- ���ڿ� �˻�(����, ���̵�)
select * from board where id LIKE 'today';

select * from board;
delete from board where bno = 3;
update board set title = '��������', content='�������� �����Դϴ�.' where bno = 1;

-- ��ȣ�� 3���� �Խñ��� ��ȸ���� 1����
update board set hit = hit+1 where bno = 2;
delete from board;
drop sequence seq_bno;
select * from member;

commit;
rollback;

drop table seq_bno;