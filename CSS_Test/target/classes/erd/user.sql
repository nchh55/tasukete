
/* Drop Tables */

DROP TABLE user CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE user
(
	-- 아이디
	userid varchar2(50) NOT NULL,
	-- 비밀번호
	-- 
	userpwd varchar2(50) NOT NULL,
	username varchar2(50) NOT NULL,
	userbirth varchar2(50) NOT NULL,
	usermail varchar2(100) NOT NULL,
	userphone varchar2(50) NOT NULL,
	useraddress varchar2(300) NOT NULL,
	disabledperson varchar2(10) NOT NULL,
	pregnancy varchar2(10) NOT NULL,
	compliment_count number,
	matching_flag varchar2(20),
	PRIMARY KEY (userid)
);



/* Comments */

COMMENT ON COLUMN user.userid IS '아이디';
COMMENT ON COLUMN user.userpwd IS '비밀번호
';



