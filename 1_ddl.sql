show databases;

-- sesac 데이터베이스가 있다면 삭제하라 
drop database if exists sesac;
-- 이모티콘과 한글도 사용할 수 있는 데이터베이스 생성
create database sesac default character set utf8mb4 default collate utf8mb4_unicode_ci;

use sesac;
show tables;

-- 테이블 생성
create table user(
	id varchar(10) primary key not null,
    password varchar(20) not null,
    gender enum('남성', '여성'),
    age int unsigned
);

-- 테이블 구조 수정
alter table user modify id int auto_increment;
alter table user add nickname varchar(20) not null;
alter table user drop column gender;
desc user;

-- 테이블 삭제
drop table if exists user;

create table member(
	id int auto_increment not null primary key,
    name varchar(5) not null,
    age int,
    gender varchar(2) not null,
    email varchar(50),
    promotion varchar(2)
);

alter table member drop column age;
alter table member add interest varchar(100);

desc member;
drop table if exists member;