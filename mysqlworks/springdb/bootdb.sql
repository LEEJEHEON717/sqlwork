
create database bootdb;

use bootdb;

select * from tbl_member;
select * from tbl_board order by id desc;

select * from board;
select * from board order by id asc;
select * from board order by id desc;

desc tbl_member;

-- bootboard2 ----------------------------

select * from t_member;
select * from t_board;

drop table board;

desc member;