drop table if exists an;
create table an(
    ano int auto_increment primary key,
	aname varchar(100),
    aid varchar(100),
    apassword varchar(100),
    aphone varchar(100),
    aemail varchar(100),
    aaddress varchar(100),
    adate datetime default now()
);

select * from an;

select * from an where aid ='dksxotjq2';

drop table an;

insert into an values (null,'1','1','1','1','1',1,now());