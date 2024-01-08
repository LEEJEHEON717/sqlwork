-- todo 테이블 생성
use springdb;

drop table if exists tbl_todo;
create table tbl_todo(
	tno 			bigint primary key auto_increment,
	title 			varchar(100) not null,
	writer			varchar(20) not null,
	createddate 	datetime default now()
);

select * from tbl_todo;