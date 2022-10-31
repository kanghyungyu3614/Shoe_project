drop database if exists shoemain;

create database shoemain;

use shoemain;

drop database if exists shoemain;

create database shoemain;

use shoemain;

create table signup(
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
insert into signup values(null,"admin","admin","admin","admin","admin","admin",now());
drop table if exists board;
create table board(
  snum int primary key auto_increment,
  stitle varchar(100),
  scontent varchar(100),
  sfile longtext,
  lnum int,
  foreign key (lnum) references signup(lnum)
);

select b.* , s.lid from signup s , board b where s.lnum = b.lnum;

-- //////////////// Admin ///////////////////////////

drop table if exists notice;
create table notice(
	nno	int auto_increment primary key,		-- 공지번호
    ntitle varchar(100),					-- 공지제목
    ncontent varchar(300),					-- 공지내용
    ndate datetime default now()			-- 공지날짜
);

create table product(
	pno	int auto_increment primary key,		-- 상품번호
    ppurpose varchar(100),					-- 상품목적 (구매, 판매, 배송 등등)
    pcategory varchar(100),					-- 상품종류
    ptitle varchar(100),					-- 상품제목
    pcontent varchar(300),					-- 상품내용
    pdate datetime default now(),			-- 상품등록날짜
    pimg varchar(1000)						-- 상품이미지
);

//////////////// Admin ///////////////////////////

drop table if exists notice;
create table notice(
	nno	int auto_increment primary key,		-- 공지번호
    ntitle varchar(100),					-- 공지제목
    ncontent varchar(300),					-- 공지내용
    ndate datetime default now()			-- 공지날짜
);

create table product(
	pno	int auto_increment primary key,		-- 상품번호
    ppurpose varchar(100),					-- 상품목적 (구매, 판매, 배송 등등)
    pcategory varchar(100),					-- 상품종류
    ptitle varchar(100),					-- 상품제목
    pcontent varchar(300),					-- 상품내용
    pdate datetime default now(),			-- 상품등록날짜
    pimg varchar(1000)						-- 상품이미지
);

////////////////////////////////////////////////////



select * from board;

///////////////////////////////////////////////



-- insert into an values (null, "admin", "admin", "admin", "000-0000-0000", "admin@naver.com", "admin", now());

-- insert into an values (null,'1','1','1','1','1',1,now());





