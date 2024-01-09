-- todo 테이블 생성
use springdb;

drop table if exists tbl_todo;
create table tbl_todo(
	tno 			bigint primary key auto_increment,
	title 			varchar(100) not null,
	writer			varchar(20) not null,
	createddate 	datetime default now()
);

select * from tbl_todo order by tno desc;
select * from tbl_todo order by tno asc limit 3; 	-- 제일 앞에서 부터
select * from tbl_todo order by tno desc limit 3;	-- 제일 뒤에서 부터
select * from tbl_todo order by tno asc limit 2, 4; -- 2다음 부터 4개 표시 ex)3,4,5,6

-- 검색
select * from tbl_todo 
where title like '%운동%' or writer like '%대상현%'
order by tno desc;

-- 재귀 복사
insert into tbl_todo(title, writer)
(select title, writer from tbl_todo);

select count(tno) from tbl_todo;

truncate table tbl_todo;