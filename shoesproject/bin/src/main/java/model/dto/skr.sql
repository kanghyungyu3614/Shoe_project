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

-- //////////////// Admin ///////////////////////////

drop table if exists notice;
create table notice(
   nno   int auto_increment primary key,    -- 공지번호
    ntitle varchar(100),               		-- 공지제목
    ncontent varchar(300),               	-- 공지내용
    ndate datetime default now()         	-- 공지날짜
);

create table product(                  		-- 대분류
    pno   int auto_increment primary key,   -- 상품번호
    pcategory varchar(100),               	-- 상품종류
    pbrand varchar(100),               		-- 상품브랜드
    pname varchar(100),                     -- 상품이름
    pimg varchar(1000),                  	-- 상품이미지
    pcolor varchar(100),                    -- 상품색상
    pprice int,								-- 상품가격
    preleaseday varchar(100)                -- 상품출시일
);

create table sproduct(						-- 소분류 (= sub product)
	spno int auto_increment primary key,    -- 상품번호
    spstatus varchar(100),					-- 상품현재체결상태
    spsize int,								-- 상품사이즈
    spendday varchar(100),					-- 상품최종낙찰일
    spsellid varchar(100),                  -- 상품판매자아이디
    spbuyid varchar(100),               	-- 상품구매자아이디
    spprice	int,					-- 상품입찰가격
    pno int,								-- 상품대분류번호
    foreign key (pno) references product(pno)
);

create table request(
   rno   int auto_increment primary key,      -- 요청번호
    rpurpose varchar(100),               -- 요청목적 (구매, 판매, 배송 등등)
    rdetail varchar(100),               -- 요청세부사항
    rtitle varchar(100),               -- 요청제목
   rcontent varchar(300),               -- 요청내용
    rdate datetime default now(),         -- 요청날짜
    lnum int,                        -- 회원아이디 연결
   foreign key (lnum) references signup(lnum)
);

create table comment(
   cno int auto_increment primary key,      -- 댓글번호
   ctitle varchar(100),               -- 댓글제목
    ccontent varchar(300),               -- 댓글내용
    cdate datetime default now(),         -- 댓글날짜
    rno int,                        -- 요청번호 연결
    foreign key (rno) references request(rno)
);



