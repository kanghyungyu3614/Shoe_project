drop database if exists shoemain;

create database shoemain;

use shoemain;

create table shoe(
	lnum int auto_increment ,
	lname varchar(10),
    lid varchar(100),
	lpw varchar(100),
    lph varchar(100),
	lemail varchar(100),
	lsize varchar(100),
	lday datetime default now(),
	constraint lum_pk primary key(lnum)
);

drop table if exists board;
create table board(
  snum int primary key auto_increment,
  stitle varchar(100),
  scontent varchar(100),
  sfile longtext,
  lnum int,
  foreign key (lnum) references shoe(lnum)
);

select s.lid , b.stitle , b.sfile from shoe s , board b where s.lnum = b.lnum;








select * from board;

drop table board;
select * from shoe;
select * from shoe where lid="rlarudwn900";
select *from shoe where lid ="rlarudwn900" and lpw="kimkyu9000";
select *from shoe where lid="rlarudwn900" and lname = "김경주"and lph="010-3956-1935"