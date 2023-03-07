create table member (
    memId varchar2(50) not null,
    memPass varchar2(100) not null,
    memName varchar2(30) not null,
    memPhone varchar2(20) not null,
    memAddr1 varchar2(20) null,
    memAddr2 varchar2(50) null,
    memAddr3 varchar2(50) null,
    regDate date default sysdate,
    verify number default 0,
    primary key(memId)
);

CREATE TABLE goods (
    gdsNum       number          not null,
    gdsName      varchar2(50)    not null,
    cateCode     varchar2(30)    not null,
    gdsPrice     number          not null,
    gdsStock     number          null,
    gdsInfo       varchar(500)    null,
    gdsImg       varchar(200)    null,
    gdsDate      date            default sysdate,
    primary key(gdsNum)  
);

-- gdsNum 자동 입력을 위한 시퀀스
CREATE SEQUENCE goods_seq;

-- (카테고리 테이블)상품 2차 분류
CREATE table goods_category (
    cateName     varchar2(20)    not null,
    cateCode     varchar2(30)    not null,
    cateCodeRef  varchar2(30)    null,
    primary key(cateCode),
    foreign key(cateCodeRef) references goods_category(cateCode)
);

-- 상품평 Table
create table reply (
	gdsNum 	number	not null,
	memId	varchar2(50)	not null,
	repNum	number			not null,
	repCon	varchar2(2000)	not null,
	repDate	date			default sysdate,
	primary key(gdsNum, repNum)
);

create sequence reply_seq;

alter table reply
	add constraint reply_gdsNum foreign key(gdsNum)
	references goods(gdsNum);
	
alter table reply
	add constraint reply_memId foreign key(memId)
	references member(memId);
	
	
-- 장바구니 Table
create table cart (
    cartNum     number          not null,
    memId      varchar2(50)    not null,
    gdsNum      number          not null,
    cartStock   number          not null,
    addDate     date            default sysdate,
    primary key(cartNum, memId) 
);

create sequence cart_seq;

alter table cart
    add constraint cart_memId foreign key(memId)
    references member(memId);

alter table cart
    add constraint cart_gdsNum foreign key(gdsNum)
    references goods(gdsNum);

-- 주문 Table
create table ordering (
	orderId		varchar2(50) not null,
	memId		varchar2(50) not null,
	orderRec	varchar2(50) not null,
	memAddr1	varchar2(20) not null,
	memAddr2	varchar2(50) not null,
	memAddr3	varchar2(50) not null,
	orderPhone	varchar2(30) not null,
	amount		number		 not null,
	orderDate 	Date		 default sysdate,
	primary key(orderId)
);

alter table ordering
	add constraint ordering_memId foreign key(memId)
	references member(memId);

-- 주문 상세 Table
create table order_details (
	orderDetailsNum		number			not null,
	orderId				varchar2(50)	not null,
	gdsNum				number			not null,
	cartStock			number			not null,
	primary key(orderDetailsNum)
);

create sequence order_details_seq;

alter table order_details
	add	constraint order_details_orderId foreign key(orderId)
	references ordering(orderId);
