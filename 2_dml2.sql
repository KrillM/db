use sesac;
show tables;

select * from user;
select * from customer;
select * from orders;

-- update와 delete의 기준은 기본키다.
update customer set custname = '김지수' where custid = 'kiwi';
delete from user where id = 3;

-- delete는 참조하고 있는 데이터가 있는 경우 삭제할 수 없다.
delete from orders where custid = 'wow123';
delete from customer where custid='wow123';
-- on delete cascade를 reference 조건문 뒤에 적으면 자동 삭제가 된다.

drop table if exists user;
create table user(
	id varchar(10) not null primary key,
    pw varchar(20) not null,
    name varchar(9) not null,
    gender enum('M', 'F', '') default '',
    birthday date not null,
    age int(3) not null default 0
);
desc user;

insert into user values ('hong1234', 'sacnjkcnkl', '홍길동', 'M', '1990-01-31',33);
insert into user values ('sexysung', 'asckbasdhc', '성춘향', 'F', '1992-11-21',31);
insert into user values ('power70', 'sdacjkadb', '변기수', 'M', '1972-11-21',50);
insert into user values ('hanjo', 'asdjasd', '한왕조', 'M', '1988-09-18',35);
insert into user values ('goat10', 'cnnjjasn', '메시', 'M', '1987-06-24',36);
insert into user values ('nalgando7', 'adsjkasd', '호날두', 'M', '1985-02-05',38);
insert into user values ('therock77', 'nacjbqww', '더락', 'M', '1977-07-31',46);

select * from user order by birthday;
select * from user where gender = 'M' order by name desc;
select id, name from user where birthday >= '1990-01-01';
select * from user where birthday like '%06%' order by birthday;
select * from user where gender = 'M' and birthday between '1970-01-01' and '1979-12-31';
select * from user order by age desc limit 3;
select * from user where age between 25 and 50;
update user set pw='12341234' where id = 'hong1234';
select * from user where id ='hong1234';
delete from user where id = 'therock77';
select * from user;
