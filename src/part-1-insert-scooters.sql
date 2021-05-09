-- insert 6 scooters to the table Scooter 
insert into Scooter values(
    1,'Cool123','Italy','432432',10,50,100,'slightly used'
);

insert into Scooter values(
    2,'Cool123','Italy','432433',20,50,200,'used'
);

insert into Scooter values(
    3,'Cool123','Italy','432434',40,50,150,'new'
);

insert into Scooter values(
    4,'California1','US','aleifd',40,20,150,'new'
);
insert into Scooter values(
    5,'California1','US','alsfdeifd',10,20,100,'used'
);

insert into Scooter values(
    6,'Fun and Fast','German','123123',50,100,140,'used'
);

--insert 8 customers 
insert into Customer_info values(
    'hk2874','HEEWON','hk2874@nyu.edu','9173023333',1,'JOSH',0,'Wall Street, NY','2020-08-25',1
);

insert into Customer_info values(
    'jj11','JOSH','jj11@nyu.edu','9173022433',0,NULL,0,'2nd Street, NY','2019-09-02',NULL
);

insert into Customer_info values(
    'jo12','JOHN','jo12@gmail.com','9183022433',1,NULL,1,'Union Square, NY','2009-05-02',5
);

insert into Customer_info values(
    'ka123','KATIE','ka1234@gmail.com','9183021234',0,NULL,1,'Union Square, NY','2014-04-16',NULL
);

insert into Customer_info values(
    'A12','ANNE','A12@gmail.com','9181111234',0,'KATIE,JOHN',0,'Union Square, NY','2018-05-16',NULL
);
insert into Customer_info values(
    'ee123','EMILY','ee123@gmail.com','5183021234',0,'ANNE,JOHN,KATIE',0,'Union Square, NY','2019-02-01',NULL
);
insert into Customer_info values(
    'ju15','JULIA','ju15@gmail.com','1113021234',0,'HEEWON',0,'Wall street, NY','2020-10-30',NULL
);
insert into Customer_info values(
    'bo123','BOA','bo123@gmail.com','1233021238',0,'HEEWON,JOSH,ANNE,JOHN,KAITE',0,'Union Square, NY','2020-11-01',NULL
);








--insert into scooter_usage_info
insert into scooter_usage_info values(
    1,'2020-11-04 08:33:03',TIMESTAMPDIFF(HOUR,'2020-11-04 08:33:03',now()),'2020-11-06 17:20:00',NULL,'hk2874','hk2874 2020-11-04',NULL
);

insert into scooter_usage_info values(
    5,'2020-11-03 19:00:00',TIMESTAMPDIFF(HOUR,'2020-11-03 19:00:00',now()),'2020-11-04 09:20:00',NULL,'jo12','jo12 2020-11-03','late'
);

insert into scooter_usage_info values(
    2,'2014-04-17 09:00:00',6,'2014-04-17 15:00:00','no damage','ka123','ka123 2014-04-17','not late'
);
insert into scooter_usage_info values(
    2,'2014-04-18 09:00:00',6,'2014-04-18 15:00:00','no damage','ka123','ka123 2014-04-18','not late'
);

insert into scooter_usage_info values(
    2,'2014-04-19 09:00:00',6,'2014-04-19 15:00:00','no damage','ka123','ka123 2014-04-19','not late'
);

insert into scooter_usage_info values(
    2,'2014-04-20 09:00:00',4,'2014-04-20 13:00:00','damage','ka123','ka123 2014-04-20','not late'
);


--insert into Freeform
insert into Freeform values(
    'Broken bell and extremely dirty handles','0','ka123 2014-04-20',1
);

insert into Freeform values(
    'Mad Customer blaming the scooter','0','ka123 2014-04-20',2
);