select * from orders;
select * from customer;

-- distinct
select addr from customer;
select distinct addr from customer;

-- 회원별 주문 건수
select count(*) as 모든주문건수 from orders;
select count(prodname) from orders;
select custid, count(*) as 주문건수 from orders group by custid;

-- 집계함수
select custid, sum(amount) as 건수 from orders group by custid;
select sum(price) as 총액, avg(price) as 평균가, max(price) as 창렬, min(price) as 혜자 from orders;

-- group by & having
select custid, sum(amount) as 건수 from orders group by custid having sum(amount) >= 5;

-- select에서 group by를 사용할 때, group by 뒤에 쓴 속성과 집계함수로 새로 만든 속성만 출력한다. (다른 prodname 등등의 속성은 출력 X)
select custid, sum(price) as 지출 from orders group by custid; 

-- sf영화는 웬지 혼자 보고 싶다.
-- Some French Waiters Grow Healthy Oranges.
select custid, sum(amount) as 건수 from orders where custid != 'bunny' 
group by custid having sum(amount) >= 5 order by sum(amount) desc;

-- join
-- customer, order를 inner join > 주문별로 배송지를 알고 싶어서 적은 코드
select orders.*, customer.addr 
	from customer 
		inner join orders 
		on customer.custid = orders.custid;
        
select orders.prodname, orders.price, orders.amount
	from customer 
		inner join orders 
		on customer.custid = orders.custid
	where customer.custname = '강해린';