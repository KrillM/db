use sesac;
show tables;

desc user;
insert into user (password, age, nickname) values (12341234, 19, "krille");
insert into user (password, nickname) values (12341234, "yena");
insert into user values (null, 12341234, 22, "sooah");

select * from user;
select id, nickname from user;
select id, nickname from user where age is null;
select id, nickname from user where age is not null;

create table customer(
	custid char(10) not null primary key,
    custname varchar(10) not null,
    addr char(10) not null,
    phone char(11),
    birth date
);

CREATE TABLE orders(
	orderid INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    custid CHAR(10) NOT NULL, 
    prodname CHAR(6) NOT NULL, 
    price INT NOT NULL, 
    amount SMALLINT NOT NULL,
    FOREIGN KEY (custid) REFERENCES customer(custid)
);

INSERT INTO customer VALUES('bunny', '강해린', '대한민국 서울', '01012341234', '2000-02-23');
INSERT INTO customer VALUES('hello', '이지민', '대한민국 포항', '01022221234', '1999-08-08');
INSERT INTO customer VALUES('kiwi', '최지수', '미국 뉴욕', '01050005000', '1990-12-25');
INSERT INTO customer VALUES('imminji01', '강민지', '영국 런던', '01060001000', '1995-01-11');
INSERT INTO customer VALUES('lalala', '홍지수', '미국 로스앤젤레스', '01010109090', '2007-05-16');
INSERT INTO customer VALUES('jjjeee', '홍은정', '대한민국 서울', '01099991111', '2004-08-17');
INSERT INTO customer VALUES('wow123', '이민혁', '일본 삿포로', '01011223344', '1994-05-31');
INSERT INTO customer VALUES('minjipark', '박민지', '프랑스 파리', '01088776655', '1998-04-08');
INSERT INTO customer VALUES('jy9987', '강지연', '일본 삿포로', '01012312323', '1996-09-01');

INSERT INTO orders VALUES(NULL, 'jy9987', '프링글스', 3500, 2);
INSERT INTO orders VALUES(NULL, 'kiwi', '새우깡', 1200, 1);
INSERT INTO orders VALUES(NULL, 'hello', '홈런볼', 4200, 2);
INSERT INTO orders VALUES(NULL, 'minjipark', '맛동산', 2400, 1);
INSERT INTO orders VALUES(NULL, 'bunny', '오감자', 1500, 4);
INSERT INTO orders VALUES(NULL, 'jjjeee', '양파링', 2000, 1);
INSERT INTO orders VALUES(NULL, 'hello', '자갈치', 1300, 2);
INSERT INTO orders VALUES(NULL, 'jjjeee', '감자깡', 1200, 4);
INSERT INTO orders VALUES(NULL, 'bunny', '죠리퐁', 1500, 3);
INSERT INTO orders VALUES(NULL, 'kiwi', '꼬깔콘', 1700, 2);
INSERT INTO orders VALUES(NULL, 'hello', '버터링', 4000, 2);
INSERT INTO orders VALUES(NULL, 'minjipark', '칙촉', 4000, 1);
INSERT INTO orders VALUES(NULL, 'wow123', '콘초', 1700, 3);
INSERT INTO orders VALUES(NULL, 'imminji01', '꼬북칩', 2000, 2);
INSERT INTO orders VALUES(NULL, 'bunny', '썬칩', 1800, 5);
INSERT INTO orders VALUES(NULL, 'kiwi', '고구마깡', 1300, 3);
INSERT INTO orders VALUES(NULL, 'jy9987', '오징어집', 1700, 5);
INSERT INTO orders VALUES(NULL, 'jjjeee', '바나나킥', 2000, 4);
INSERT INTO orders VALUES(NULL, 'imminji01', '초코파이', 5000, 2);

select * from customer;
select custname, addr, birth from customer where birth >= '2000-01-01';
select custname, addr, birth from customer where birth between '1994-01-01' and '2009-12-31' order by birth;
select custname, addr, birth from customer where addr in ('영국 런던', '프랑스 파리');
select custname, addr, birth from customer where addr like '%한%' or '프%';

select * from orders;
select prodname, price from orders where prodname like '%칩' and price < 2000;
select prodname, price from orders where prodname like '%칩' or price > 2000;
select custid, prodname, price from orders where custid = 'bunny' order by price desc;
select prodname, price from orders order by price desc limit 5;