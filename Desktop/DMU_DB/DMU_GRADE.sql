
use dmua;

select * from Auth;

drop table Auth;

CREATE TABLE `Auth` (
	`Grade`	VARCHAR(20)	NOT NULL default 1,
	`admin`	int 		NULL, 	-- 0
	`nomal`	int			NULL,  	-- 1
    `sup`	int			NULL,  	-- 2
	`prid`	int			NULL  	-- 3
);

ALTER TABLE `Auth` ADD CONSTRAINT `PK_AUTH` PRIMARY KEY (
	`Grade`
);

ALTER TABLE `Auth` ADD CONSTRAINT `FK_USER_TO_Auth_1` FOREIGN KEY (
	`Grade`
)
REFERENCES `USER` (
	`Grade`
);



