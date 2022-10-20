drop database if exists shoemain;

create database shoemain;

use shoemain;

create table shoe(

	num int primary key auto_increment,
	s_name varchar(10),

	s_add varchar(100),

	s_id varchar(10),
	s_pw varchar(10),
	s_phone varchar(13),
	s_size varchar(3),
	s_day datetime default now()



);
select * from shoe;