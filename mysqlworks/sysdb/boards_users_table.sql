use springdb;
drop table if exists board;
create table boards (
   id            bigint primary key auto_increment,
    boardtitle      varchar(100) not null,
    boardwriter      varchar(20) not null,
    boardcontent   text not null,
    createtime       Timestamp
);


drop table if exists users;
create table users (
   id         bigint primary key auto_increment,
    userid      varchar(20) unique,
    userpasswd   varchar(20) not null,
    username   varchar(30) not null,
    userage      int
);

select * from boards;
select * from users;