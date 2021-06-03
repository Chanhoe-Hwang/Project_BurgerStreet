DROP TABLE B_member CASCADE CONSTRAINT;
DROP TABLE B_product CASCADE CONSTRAINT;
DROP TABLE B_cart CASCADE CONSTRAINT;
DROP TABLE B_orders CASCADE CONSTRAINT;
DROP TABLE B_order_detail CASCADE CONSTRAINT;
DROP TABLE B_board CASCADE CONSTRAINT;

DROP sequence B_product_seq;
DROP sequence B_cart_seq;
DROP sequence B_orders_seq;
DROP sequence B_order_detail_seq;
DROP sequence B_board_seq;
-- 윗부분은 테이블 및 시퀀스 지우고 초기화하는 용도입니다.
select * from b_member;



-- 회원정보 저장 테이블 생성
create table B_member( 
id 			varchar2(20) primary key,
pwd 		varchar2(20), 
name 	varchar2(40),
email 	varchar2(40),
phone 	varchar2(20),
indate 	date default sysdate, --가입일
adminchk char(1) default 'n' -- 관리자 여부( 기본 n / 관리자 y )
);


-- 상품(버거) 정보 테이블 + pseq 시퀀스 생성
create table B_product(
pseq 		number(5) primary key,
name 	varchar2(100),
kind 		char(1), 
price 	number(7) default '0', -- 판매가
content 	varchar2(1000), -- 버거 정보
image 	varchar2(50) default 'default.jpg', --상품 기본 이미지
image_detail varchar2(50) default 'default.jpg', -- 상품 디테일에 들어가면 나오는 아래쪽 세트메뉴쪽 사진
indate 	date default sysdate --등록일
);
create sequence B_product_seq start with 1;


-- 카트 테이블 + cseq 시퀀스 생성
create table B_cart(
cseq 		number(10) 	primary key, -- 장바구니번호
id 			varchar2(20) references B_member(id), -- 주문자 아이디(FK :　member.id) 
pseq 		number(5) references B_product(pseq), -- 주문 상품번호(FK :product.pseq)
quantity number(5)	default 1, -- 주문 수량
result 	char(1)	default '1', -- 1:미처리 2:처리
indate 	date		 default  sysdate, -- 주문일
cartcnt number(5) default 0
);
create sequence B_cart_seq start with 1;


-- 카트 뷰 테이블 생성 (B_cart, B_product, B_member 테이블 참조함)
create or replace view B_cart_view
as
select c.cseq, c.id, m.name as mname, c.pseq, p.name as pname, p.content,
p.image, c.quantity, p.price, c.result, c.indate 
from B_cart c, B_product p, B_member m
where c.pseq = p.pseq and m.id = c.id;

-- 게시판 테이블 생성
create table B_board(
   num         number(5),
   pass         number(30),
   userid      varchar2(20),
   email         varchar2(50),
   title         varchar2(50),
   content      varchar2(1000),
   wtedate   date default sysdate,
   rep char(1) default '1',ri
   reply varchar2(1000)   
);
create sequence B_board_seq start with 1;


-- 오더 테이블 + oseq 생성
create table B_orders(
oseq 		number(10) primary key, -- 주문번호 
id 			varchar2(16) references B_member(id), -- 주문자 아이디
indate 	date default sysdate -- 주문일
);
create sequence B_orders_seq start with 1;


-- 오더 디테일 테이블 + odseq 생성
create table B_order_detail(
odseq 	number(10) primary key, -- 주문상세번호
oseq 		number(10) references B_orders(oseq), -- 주문번호 
pseq 		number(5) references B_product(pseq), -- 상품번호
quantity	number(5) default 1, -- 주문수량
result 	char(1) default '1', -- 1: 미처리 2: 처리
cashyn char(1) default 'n', -- 결제수단 y:카드결제, n:현금결제
addr1 varchar(50), -- 기본 배달받을 주소(주소지)
addr2 varchar(50), -- 디테일한 주소(동 호수 등)
contactnum varchar(20), -- 주문자 연락처
comments varchar(50) -- 주문자 요구사항
);
create sequence B_order_detail_seq start with 1;


-- 오더 뷰 테이블 생성 (B_orders, B_order_detail, B_member, B_product 참조)
create or replace view B_order_view
as
select d.odseq, o.oseq, o.id, o.indate, d.pseq, d.quantity, d.result, d.addr1,
d.addr2, d.contactnum, d.comments, d.cashyn,
m.name as mname, m.phone,
p.name as pname, p.price
from B_orders o, B_order_detail d, B_member m, B_product p
where o.oseq = d.oseq and o.id = m.id and d.pseq = p.pseq;


-- 테스트용 멤버 추가
insert into B_member(id, pwd, name, email, phone)
values('chan', '1111', '찬회', 'chan@naver.com', '010-0000-0000');
insert into B_member(id, pwd, name, email, phone)
values('hyeji', '1111', '혜지', 'hj@naver.com', '01011112222');
insert into B_member(id, pwd, name, email, phone)
values('dudu', '11111', '두두', 'chd@naver.com', '010-1111-0000');
-- 테스트용 관리자 추가
insert into B_member(id, pwd, name, email, phone, adminchk)
values('admin', 'admin', '관리자', 'admin@naver.com', '010-0000-0001', 'y');

-- 테스트용 카트 추가
insert into B_cart(cseq, id, pseq, quantity)
values(B_cart_seq.nextval, 'chan', 1, 1);
insert into B_cart(cseq, id, pseq, quantity)
values(B_cart_seq.nextval, 'chan', 4, 2);
insert into B_cart(cseq, id, pseq, quantity)
values(B_cart_seq.nextval, 'chan', 30, 2);

-- 테스트용 게시글 추가
insert into B_board (num, pass, userid, email, title, content)
values(B_board_seq.nextval, 1234, 'hkh', '1234@naver.com', '이게 무슨일이고?', '참말로 후회 많이 했고 이런 허접한 게시판하나 못만드냐~');
insert into B_board (num, pass, userid, email, title, content)
values(B_board_seq.nextval, 1234, 'hkh', '1234@naver.com', '이게 무슨일이고?', '참말로 후회 많이 했고 이런 허접한 게시판하나 못만드냐~');
insert into B_board (num, pass, userid, email, title, content)
values(B_board_seq.nextval, 1234, 'hkh', '1234@naver.com', '이게 무슨일이고?', '참말로 후회 많이 했고 이런 허접한 게시판하나 못만드냐~');

-- B_product 시험용 데이터 넣어보기(사진 잘 나오는지 보기위한 용도로 상세설명은 일단 생략)
-- kind 1 의 마지막 바삭킹이랑 너겟킹 image_detail 을 아직 못정해서 일단 image 랑 동일하게 했음
insert into B_product(pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '기네스와퍼팩1', '1', 22000, '기네스머쉬룸와퍼+기네스콰트로치즈와퍼+프렌치프라이L+너겟킹4조각+콜라R2', '1.SP/GWP1O.png', '1.SP/GWP1S.png');
insert into B_product(pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '기네스와퍼팩2', '1', 21400, '기네스머쉬룸와퍼+기네스콰트로치즈와퍼+프렌치프라이L+너겟킹4조각+콜라R2', '1.SP/GWP2O.png', '1.SP/GWP2S.png');
insert into B_product(pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '기네스와퍼팩3', '1', 21400, '기네스머쉬룸와퍼+콰트로치즈와퍼+프렌치프라이L+너겟킹4조각+콜라R2', '1.SP/GWP3O.png', '1.SP/GWP3S.png');
insert into B_product(pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '기네스와퍼팩4', '1', 21000, '기네스머쉬룸와퍼+콰트로치즈와퍼+프렌치프라이L+너겟킹4조각+콜라R2', '1.SP/GWP4O.png', '1.SP/GWP4S.png');
insert into B_product(pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '기네스와퍼팩5', '1', 24500, '기네스머쉬룸와퍼+콰트로치즈와퍼+프렌치프라이L+너겟킹4조각+콜라R2', '1.SP/GWP5O.png', '1.SP/GWP5S.png');
insert into B_product(pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '바삭킹&너겟킹10', '1', 15700, '바삭킹8조각+너겟킹10조각+소스', '1.SP/BSK&NK10O.png', '1.SP/BSK&NK10O.png');
insert into B_product(pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '바삭킹&모짜볼10', '1', 15500, '바삭킹8조각+모짜볼10조각+소스', '1.SP/BSK&MZO.png', '1.SP/BSK&MZO.png');


insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '기네스콰트로치즈와퍼', '2', 9300, '콰트로치즈와퍼가 기네스를 만나다!', '2.PR/1.GQCWO.png', '2.PR/1.GQCWS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '기네스와퍼', '2', 9300, '기네스 번과 기네스 바비큐 소스의 풍미!', '2.PR/2.GWO.png', '2.PR/2.GWS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '기네스머쉬룸와퍼', '2', 9700, '기네스 번과 기네스 바비큐 소스의 풍미!', '2.PR/3.GMWO.png', '2.PR/3.GMWS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '몬스터X', '2', 9700, '부드러운 호밀 브리오슈 번, 두툼한 스테이크 패티, 디아블로 소스의 압도적인 맛', '2.PR/4.MXO.png', '2.PR/4.MXS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '몬스터와퍼', '2', 9000, '불맛 가득 순쇠고기, 치킨, 베이컨에 화끈한 디아블로 소스의 압도적인 맛', '2.PR/5.MWO.png', '2.PR/5.MWS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '콰트로치즈X', '2', 8600, '진짜 불맛을 즐겨라, 4가지 고품격 치즈와 불에 직접 구운 스테이크 패티의 만남!', '2.PR/6.QCXO.png', '2.PR/6.QCXS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '콰트로치즈와퍼', '2', 7600, '진짜 불맛을 즐겨라, 4가지 고품격 치즈와 불에 직접 구운 와퍼 패티의 만남!', '2.PR/7.QCWO.png', '2.PR/7.QCWS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '트러플머쉬룸X', '2', 8100, '트러플 크림소스와 네 가지 머쉬룸이 선사하는 깊고 풍부한 맛의 향연', '2.PR/8.TMXO.png', '2.PR/8.TMXS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '트러플머쉬룸와퍼', '2', 7100, '트러플 크림소스와 네 가지 머쉬룸이 선사하는 깊고 풍부한 맛의 향연', '2.PR/9.TMWO.png', '2.PR/9.TMWS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '통새우스테이크버거', '2', 8700, '불맛 가득 순쇠고기, 갈릭페퍼 통새우, 스파이시토마토소스가 더해진 프리미엄 버거', '2.PR/10.SSBO.png', '2.PR/10.SSBS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '통새우와퍼', '2', 7700, '불맛 가득 순쇠고기, 갈릭페퍼 통새우, 스파이시토마토소스가 더해진 프리미엄 버거', '2.PR/11.SWO.png', '2.PR/11.SWS.png');


insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '스태커2와퍼', '3', 9300, '믿고 먹을수 있는 와퍼, 더 크게 도전하세요!', '3.W/1.STWO.png', '3.W/1.STWS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '스태커3와퍼', '3', 11300, '믿고 먹을수 있는 와퍼, 더 크게 도전하세요!', '3.W/2.STWO.png', '3.W/2.STWS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '스태커4와퍼', '3', 13300, '믿고 먹을수 있는 와퍼, 더 크게 도전하세요!', '3.W/3.SFWO.png', '3.W/3.SFWS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '리얼와퍼', '3', 6700, '불에 직접 구운 순 쇠고기 패티에 싱싱한 야채가 한가득~ 버거킹의 대표 메뉴!', '3.W/4.RWO.png', '3.W/4.RWS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '불고기와퍼', '3', 6700, '불에 직접 구운 순 쇠고기 패티가 들어간 와퍼에 달콤한 불고기 소스까지!', '3.W/5.BWO.png', '3.W/5.BWS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '치즈와퍼', '3', 7300, '불에 직접 구운 순 쇠고기 패티가 들어간 와퍼에 고소한 치즈까지!', '3.W/6.CWO.png', '3.W/6.CWS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '베이컨치즈와퍼', '3', 8500, '풍미 가득한 아메리칸 클래식의 완벽한 조화!', '3.W/7.BCWO.png', '3.W/7.BCWS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '할라피뇨와퍼', '3', 7500, '할라피뇨와 불에 직접 구운 순 쇠고기 패티의 완벽한 하모니!', '3.W/8.HWO.png', '3.W/8.HWS.png');


insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '고추장소불고기버거', '4', 4700, '부드러운 소불고기에 매콤함을 더하다!', '4.JNB/1.GSBBO.png', '4.JNB/1.GSBBS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '고추장버섯소불고기버거', '4', 5100, '부드러운 소불고기에 매콤함을 더하다!', '4.JNB/2.GBSBBO.png', '4.JNB/2.GBSBBS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '직화치즈소불고기버거', '4', 5000, '패티까지! 진짜 불고기!', '4.JNB/3.JCSBBO.png', '4.JNB/3.JCSBBS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '직화더블소불고기버거', '4', 7200, '패티까지! 진짜 불고기!', '4.JNB/4.JDSBBO.png', '4.JNB/4.JDSBBS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '직화소불고기버거', '4', 4700, '패티까지! 진짜 불고기!', '4.JNB/5.JSBBO.png', '4.JNB/5.JSBBS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '직화버섯소불고기버거', '4', 5100, '패티까지! 진짜 불고기!', '4.JNB/6.JBSBBO.png', '4.JNB/6.JBSBBS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '트러플머쉬룸와퍼주니어', '4', 5700, '트러플 크림소스와 네 가지 머쉬룸이 선사하는 깊고 풍부한 맛의 향연', '4.JNB/11.TMWJO.png', '4.JNB/11.TMWJS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '통새우와퍼주니어', '4', 5700, '불맛 가득 순쇠고기, 갈릭페퍼 통새우, 스파이시토마토소스가 더해진 프리미엄 버거', '4.JNB/12.SWJO.png', '4.JNB/12.SWJS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '콰트로치즈와퍼주니어', '4', 5700, '진짜 불맛을 즐겨라, 4가지 고품격 치즈와 불에 직접 구운 와퍼 패티의 만남!', '4.JNB/13.QCWJO.png', '4.JNB/13.QCWJS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '할라피뇨와퍼주니어', '4', 5500, '할라피뇨와퍼를 주니어 사이즈로 즐겨보세요 !', '4.JNB/14.HWJO.png', '4.JNB/14.HWJS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '와퍼주니어', '4', 5100, '불에 직접 구운 순 쇠고기 패티가 들어간 와퍼의 주니어 버전~ 작지만 꽉 찼다!', '4.JNB/15.WJO.png', '4.JNB/15.WJS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '불고기와퍼주니어', '4', 5100, '불에 직접 구운 순 쇠고기 패티가 들어간 와퍼주니어에 달콤한 불고기 소스까지!', '4.JNB/16.BWJO.png', '4.JNB/16.BWJS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '치즈와퍼주니어', '4', 5400, '불에 직접 구운 순 쇠고기 패티가 들어간 와퍼주니어에 고소한 치즈 추가!', '4.JNB/17.CWJO.png', '4.JNB/17.CWJS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '치즈버거', '4', 4000, '불에 구운 쇠고기 패티와 사르르 치즈까지, 작지만 알차다!', '4.JNB/18.CBO.png', '4.JNB/18.CBS.png');

insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '바비큐킹치킨버거', '5', 3700, '진한 바비큐 소스가 가득!', '5.AKCB/2.BKCO.png', '5.AKCB/2.BKCS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '뉴올리언스치킨버거', '5', 4700, '두툼한 치킨 통가슴살에 잠발라야 시즈닝을 더한 매콤한 치킨버거', '5.AKCB/8.NCO.png', '5.AKCB/8.NCS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, 'BLT뉴올리언스치킨버거', '5', 5700, '두툼한 치킨 통가슴살에 잠발라야 시즈닝을 더한 매콤한 치킨버거', '5.AKCB/7.BLTNCO.png', '5.AKCB/7.BLTNCS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '킹치킨버거', '5', 3700, '부드러운 에그번과 킹치킨패티의 만남! 풍부한 마요 소스로 고소하게!', '5.AKCB/9.KCO.png', '5.AKCB/9.KCS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '불고기롱치킨버거', '5', 5200, '불고기롱치킨버거', '5.AKCB/10.LCO.png', '5.AKCB/10.LCS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '롱치킨버거', '5', 5200, '담백한 치킨 패티에 부드러운 마요네즈 소스와 싱싱한 야채가 듬뿍~', '5.AKCB/13.BLCO.png', '5.AKCB/13.BLCS.png');

insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '쉐이킹프라이', '6', 2500, '깊은 풍미가 느껴지는 시즈닝으로 취향 저격!', '6.SIDE/7.SFO.png', '6.SIDE/7.SFS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '바삭킹8조각+소스', '6', 11900, '매콤하게! 바삭하게 튀긴 치킨윙', '6.SIDE/6.BSK8O.png', '6.SIDE/6.BSK8S.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '바삭킹', '6', 3300, '매콤하게! 바삭하게 튀긴 치킨윙', '6.SIDE/5.BSKO.png', '6.SIDE/5.BSKS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '21치즈스틱', '6', 2200, '', '6.SIDE/4.CSO.png', '6.SIDE/4.CSS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '크리미모짜볼', '6', 2800, '겉은 바삭~ 속은 부드러운 크림치즈가 쏘옥, 크리미모짜볼!', '6.SIDE/9.CMBO.png', '6.SIDE/9.CMBS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '코코넛쉬림프칠리소스', '6', 3900, '바삭한 코코넛 옷을 입은 탱글한 통새우와 새콤달콤 칠리소스', '6.SIDE/10.CSSCO.png', '6.SIDE/10.CSSCS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '너겟킹', '6', 2600, '바삭~ 촉촉~ 한입에 쏙 부드러운 너겟킹!', '6.SIDE/20.NKO.png', '6.SIDE/20.NKS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '치즈프라이', '6', 3100, '치즈와 감자튀김의 환상의 조화를 느껴보세요!', '6.SIDE/11.CFEO.png', '6.SIDE/11.CFES.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '트러플프라이', '6', 2800, '트러플만의 향이 감자튀김과 어우러져 더욱 맛있게!', '6.SIDE/13.TFO.png', '6.SIDE/13.TFS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '프렌치프라이', '6', 2200, '세계최고의 감자만 엄선해서 버거킹만의 비법으로 바삭하게!', '6.SIDE/14.FFO.png', '6.SIDE/14.FFS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '시즈닝', '6', 300, '다양한 시즈닝으로 감자튀김을 색다르게!', '6.SIDE/19.SNO.png', '6.SIDE/19.SNS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '어니언링', '6', 2600, '자연의 맛을 그대로 담은 유기농 양파로 만든 어니언링!', '6.SIDE/20.NKO.png', '6.SIDE/20.NKS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '코울슬로', '6', 2300, '버거킹만의 비법 레시피로 만든 코울슬로!', '6.SIDE/16.CLEO.png', '6.SIDE/16.CLES.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '콘샐러드', '6', 2300, '유기농 강원도 옥수수로 만든 콘샐러드!', '6.SIDE/17.CSEO.png', '6.SIDE/17.CSES.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '사이드소스', '6', 500, '다양한 소스와 함께 즐겨보세요!', '6.SIDE/18.SSO.png', '6.SIDE/18.SSS.png');

insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '제로톡톡', '7', 2600, '제로 칼로리 100% 천연 과일향 드링크', '7.DRINK/1.ZTTO.png', '7.DRINK/1.ZTTS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '아메리카노', '7', 2100, '자연을 담은 버거킹 RA인증커피', '7.DRINK/4.AMO.png', '7.DRINK/4.AMS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '핫/아이스초코', '7', 2600, '여름에도 겨울에도 초코와 함께', '7.DRINK/6.HICO.png', '7.DRINK/6.HICS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '씨그램', '7', 2300, '마지막까지 톡 쏘는 상쾌함, 씨그램!', '7.DRINK/11.SGO.png', '7.DRINK/11.SGS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '코카콜라', '7', 2300, '코카-콜라로 더 짜릿하게!', '7.DRINK/12.CCO.png', '7.DRINK/12.CCS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '코카콜라 제로', '7', 2300, '100% 짜릿함, 칼로리는 제로!', '7.DRINK/13.CCZO.png', '7.DRINK/13.CCZS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '스프라이트', '7', 2300, '나를 깨우는 상쾌함!', '7.DRINK/14.SPO.png', '7.DRINK/14.SPS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '미닛메이드 오렌지', '7', 3300, '미닛메이드 오렌지로 상큼한 하루를!', '7.DRINK/15.MMOO.png', '7.DRINK/15.MMOS.png');
insert into B_product (pseq, name, kind, price, content, image, image_detail)
values(B_product_seq.nextval, '순수[미네랄워터]', '7', 1800, '미네랄이 풍부한 미네랄 워터', '7.DRINK/16.MWO.png', '7.DRINK/16.MWS.png');



select * from B_product;