 create table if not exists QQActivityHistory(
 id varchar(255) not null,
 cdkey varchar(255) not null,
 aType enum('GIFT','PRIVILEGE'),
 consumeAmt double,
 rebateAmt double,
 posId varchar(255),
 createdAt datetime,
lastModifiedAt datetime,
primary key(id)
);