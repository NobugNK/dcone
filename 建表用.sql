create table dc_user(uid int primary key auto_increment,itcode varchar(16) unique not null,username varchar(32)not null,islocked int,isOnthescene int);
create table dc_wallet(wid int primary key auto_increment,uid int not null references dc_user(uid),amount int);
create table dc_trade(tid int primary key auto_increment,wid int not null references dc_wallet(wid),volume int not null,tradetime time,memo varchar(50));
#创建视图
create view dc_user_wallet as select a.uid as uid, a.itcode as itcode,a.username as username,b.amount as amount from dc_user as a, dc_wallet as b where a.uid=b.uid;
#修改了一下
create view dc_user_wallet as select a.uid as uid, a.itcode as itcode,a.username as username,b.amount as amount from dc_user as a, dc_wallet as b where a.uid=b.uid;
#修改了一下