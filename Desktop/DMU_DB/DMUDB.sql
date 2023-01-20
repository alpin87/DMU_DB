
use dmua;

select * from USER;

 -- 유저와 권한확인
select *
from USER
right outer join Auth
on USER.Grade = Auth.Grade;


DROP TABLE  if exists mainrantal;
DROP TABLE  if exists rantal;
DROP TABLE  if exists mainrental;
DROP TABLE  if exists Auth;
DROP TABLE  if exists announcement;
DROP TABLE  if exists USER;


CREATE TABLE USER (
	Grade	CHAR(10)	NOT NULL default 'Student',			-- 권한
	Name	VARCHAR(20)	NOT NULL, 			-- 이름
	Password	VARCHAR(32)	NOT NULL,   -- 비밀번호
	Phone	CHAR(11)	NULL, 			-- 핸드폰 번호
	Email	VARCHAR(30)	NULL, 			-- 이메일
	StudentId	VARCHAR(8)	NOT NULL, 	-- 학번
	Department	VARCHAR(20)	NULL, 		-- 학과
	Division	VARCHAR(15)	NULL 		-- 학부
);

CREATE TABLE mainrental (
	Grade	CHAR(10)	NOT NULL,
	Name	VARCHAR(20)	NOT NULL,
	contect	VARCHAR(255)	NULL,
	img	VARCHAR(255)	NULL,
	good	VARCHAR(255)	NULL
);

CREATE TABLE rantal (
	Grade	CHAR(10)	NOT NULL,
	Name	VARCHAR(20)	NOT NULL,
	Post	VARCHAR(255)	NULL,
	Product	VARCHAR(255)	NULL,
	Price	VARCHAR(255)	NULL,
	Type	VARCHAR(255)	NULL
);

CREATE TABLE Auth (
	Grade	CHAR(10)	NOT NULL,
	Name	VARCHAR(20)	NOT NULL,
	admin	VARCHAR(255)	NULL,
	sup		VARCHAR(255)	NULL,
	prid	VARCHAR(255)	NULL,
	nomal	VARCHAR(255)	NULL,
	steff	VARCHAR(255)	NULL
);

CREATE TABLE announcement (
	Grade		CHAR(10)	NOT NULL,
	Name	VARCHAR(20)	NOT NULL,
	division	VARCHAR(255)	NULL,
	mainfield	VARCHAR(255)	NULL,
	file		VARCHAR(255)	NULL,
	img			VARCHAR(255)	NULL
);


INSERT INTO USER(Name, Password, StudentId, Phone, Email, Department, Division) values("asd", 1234, 13523, "01022222222", "asd@asdw", "컴공", "컴소");



ALTER TABLE USER ADD CONSTRAINT PK_USER PRIMARY KEY (
	Grade,
	Name
);

ALTER TABLE mainrental ADD CONSTRAINT PK_MAINRENTAL PRIMARY KEY (
	Grade,
	Name
);

ALTER TABLE Auth ADD CONSTRAINT PK_AUTH PRIMARY KEY (
	Grade,
	Name
);

ALTER TABLE mainrental ADD CONSTRAINT FK_USER_TO_mainrental_1 FOREIGN KEY (
	Grade
)
REFERENCES USER (
	Grade
);

ALTER TABLE Auth ADD CONSTRAINT FK_USER_TO_Auth_1 FOREIGN KEY (
	Grade
)
REFERENCES USER (
	Grade
);

select Host,User,plugin,authentication_string FROM mysql.user;
