
/* Drop Tables */

DROP TABLE NEW_TABLE CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE NEW_TABLE
(
	pseq number(5,0) NOT NULL
);


CREATE TABLE product
(
	pseq number(5,0) NOT NULL,
	name varchar2(30) NOT NULL,
	PRIMARY KEY (pseq)
);



/* Create Foreign Keys */

ALTER TABLE NEW_TABLE
	ADD FOREIGN KEY (pseq)
	REFERENCES product (pseq)
;



