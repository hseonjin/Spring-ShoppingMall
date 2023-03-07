-- 회원가입 insert test
insert into member(memId, memPass, memName, memPhone)
	values('test', 'test1', 'test2', '010');

-- 관리자 계정
update member
	set
		verify = 9
	where memId = 'shop99z@gmail.com';


-- 살품 추가
insert into goods_category (cateName, cateCode) values ('상의', '100');
insert into goods_category (cateName, cateCode, cateCodeRef) values ('맨투맨', '101', '100');
insert into goods_category (cateName, cateCode, cateCodeRef) values ('후드', '102', '100');
insert into goods_category (cateName, cateCode, cateCodeRef) values ('티셔츠', '103', '100');
insert into goods_category (cateName, cateCode, cateCodeRef) values ('니트', '104', '100');

insert into goods_category (cateName, cateCode) values ('하의', '200');
insert into goods_category (cateName, cateCode, cateCodeRef) values ('롱팬츠', '201', '200');
insert into goods_category (cateName, cateCode, cateCodeRef) values ('숏팬츠', '202', '200');
insert into goods_category (cateName, cateCode, cateCodeRef) values ('스커트', '203', '200');

insert into goods_category (cateName, cateCode) values ('원피스', '300');

insert into goods_category (cateName, cateCode) values ('가방', '400');

-- Level을 통해 쿼리 결과에 계층 표시
select level, cateName, cateCode, cateCodeRef from goods_category
    start with cateCodeRef is null connect by prior cateCode = cateCodeRef;


-- 상품 등록 Test
INSERT INTO GOODS (GDSNUM, GDSNAME, CATECODE, GDSPRICE, GDSSTOCK, GDSINFO)
	VALUES (goods_seq.NEXTVAL, '이름', 100, 1000, 30, '설명');

-- 상품 목록 Test
select gdsNum, gdsName, cateCode, gdsPrice, gdsStock, gdsInfo, gdsImg, gdsDate
	from GOODS
		order by gdsNum desc;
		
-- 상품 조회 Test
select gdsNum, gdsName, cateCode, gdsPrice, gdsStock, gdsInfo, gdsImg, gdsDate
	from GOODS
		where gdsNum = 5;
		
-- 조인 Test
select g.gdsNum, g.gdsName, g.cateCode, c.cateCodeRef, c.cateName, gdsPrice, gdsStock, gdsInfo, gdsImg, gdsDate
	 from goods g
	     inner join goods_category c
	         on g.cateCode = c.cateCode          
	    where g.gdsNum = 6;
	    
-- 상품 수정 Test
update GOODS
	set gdsName = '수정', cateCode = '200', gdsPrice = '30000', gdsStock = '5', gdsInfo ='설명수정', gdsImg = ''
		where gdsNum = 3;

select * from goods;

-- 상품 삭제 Test
delete goods where gdsNum = 5;

-- 썸네일 이미지 컬럼 추가
alter table goods add (gdsThumbImg varchar(200));

-- 카테고리 출력 쿼리 Test
select g.gdsNum, g.gdsName, g.cateCode, c.cateCodeRef, c.cateName,
	   gdsPrice, gdsStock, gdsInfo, gdsImg, gdsDate, g.gdsImg, g.gdsThumbImg
   from goods g
   	inner join goods_category c
   		on g.cateCode = c.cateCode
   	where g.cateCode = 101;

-- 카테고리 조인
select g.gdsNum, g.gdsName, g.cateCode, c.cateCodeRef, c.cateName,
	   gdsPrice, gdsStock, gdsInfo, gdsImg, gdsDate, g.gdsImg, g.gdsThumbImg
	from goods g
	inner join goods_category c
		on g.cateCode = c.cateCode
	where g.cateCode = 200 or c.cateCodeRef = 200;
	
-- 상품평 추가 Test
insert into reply (gdsNum, memId, repNum, repCon)
	values (3, 'shop99z@com', reply_seq.nextval, '상품평 테스트')
	
-- 상품평 list Test
select gdsNum, memId, repNum, repCon, repDate
	from reply
		where gdsNum = 25;
		
-- 상품평 list memId 대신 memName 표시
select r.gdsNum, r.memId, r.repNum, r.repCon, r.repDate, m.memName
	from reply r
		inner join member m
			on r.memId = m.memId
		where gdsNum = 3;
		
-- 상품평 삭제 Test
delete reply
	where repNum = 25
		and memId = 'shop99z@com';
		
-- 상품평 삭제 Id 체크
select memId
	from reply
		where repNum = 25;

-- 상품평 수정 Test
update reply
	set repCon = '상품평 수정'	
	where repNum = 24 
		and memId = 'shop99z@com';

-- 장바구니 담기 Test
insert into cart (cartNum, memId, gdsNum, cartStock)
	values (cart_seq.nextval, 'shop99z@com', 21, 99)
			
-- 장바구니 리스트
 select
     row_number() over(order by c.cartNum desc) as num,
     c.cartNum, c.memId, c.gdsNum, c.cartStock, c.addDate,
     g.gdsName, g.gdsPrice, g.gdsThumbImg
 from cart c
     inner join goods g
         on c.gdsNum = g.gdsNum   
     where c.memId = 'shop99z@com';
     
-- 장바구니 삭제 Test
delete cart
	where cartNum = 1
		and memId = 'shop99z@com';

-- 주문정보 입력 Test
select o.orderId, o.memId, o.orderREc, o.memAddr1, o.memAddr2, o.memAddr3, o.orderPhone, o.amount, o.orderDate,
	d.orderDetailsNum, d.gdsNum, d.cartStock
from ordering o
	inner join order_details d
		on o.orderId = d.orderId
	where memId = 'test@com';

select orderId, memId, orderRec, memAddr1, memAddr2, memAddr3, orderPhone, amount, orderDate
	from ordering
		where memId = 'test@com';
		
-- 주문 상세정보 Test
select
	o.orderId, o.memId, o.orderREc, o.memAddr1, o.memAddr2, o.memAddr3, o.orderPhone, o.amount, o.orderDate,
	d.orderDetailsNum, d.gdsNum, d.cartStock, g.gdsName, g.gdsThumbImg, g.gdsPrice
from ordering o
	inner join order_details d
		on o.orderId = d.orderId
	inner join goods g
		on d.gdsNum = g.gdsNum
	where o.memId = 'test@com'
		and o.orderId = '20221030_066010';
		
-- 주문목록 test
select orderId, memId, orderRec, memAddr1, memAddr2, memAddr3, orderPhone, amount, orderDate, delivery
	from ordering
		where memId = 'test@com';
		
-- 관리자모드 주문 상세
alter table ordering
	add(delivery varchar2(20) default '배송준비');
	
-- 배송상태 Test
update ordering
	set delivery = '배송중'
where orderId = '20221030_066010';

-- 관리자모드 상품평 관리
select 
	r.gdsNum, r.memId, r.repNum, r.repCon, r.repDate,
	m.memName
from reply r
	inner join member m
		on r.memId = m.memId;

-- 주소 컬럼 크기 변경
alter table ordering
    modify(memAddr1 varchar2(100));

alter table ordering
    modify(memAddr2 varchar2(100));
   
alter table ordering
    modify(memAddr3 varchar2(100));
     
		
