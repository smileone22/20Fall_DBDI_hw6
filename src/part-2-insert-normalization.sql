-- insert

--key, date, time, location_desc, lon_lat, juroidiction code, murderflag 
insert into Incident_info values(
    '74146165','2010-08-14','2010-08-14 03:11:00',NULL,'POINT (-73.77534099699994 40.66891477200004)',0,'FALSE'
);

insert into Incident_info values(
    '66928846','2009-10-17','2009-10-17 18:03:00',NULL,'POINT (-73.93130224699998 40.65087729100002)',0,'TRUE'
);

insert into Incident_info values(
    '73405770','2010-06-27','2010-06-27 04:14:00',NULL,'POINT (-73.85786021699995 40.88947350500007)',0,'FALSE'
);

insert into Incident_info values(
    '85977416','2012-07-28','2012-07-28 05:06:00',NULL,'POINT (-73.85786021699995 40.88947350500007)',0,'TRUE'
);

insert into Incident_info values( 
    '24320687','2006-09-14','2006-09-14 16:38:00','MULTI DWELL - APT BUILD','POINT (-73.85786021699995 40.88947350500007)',0,'FALSE'
);
insert into Incident_info values(
    '27476265','2007-03-17','2007-03-17 19:34:00','MULTI DWELL - APT BUILD','POINT (-73.93566789499994 40.839987567000044)',0,'FALSE'
);


insert into Key_precinct values (
    '74146165',113
); 
insert into Key_precinct values (
    '66928846',67
); 
insert into Key_precinct values (
    '73405770',47
); 
insert into Key_precinct values (
    '85977416',47
); 

insert into Key_precinct values (
    '24320687',47
); 
insert into Key_precinct values (
    '27476265',43
); 
-----------------------------------------------
--key, age_group,sex, race
insert into Victim values(
    74146165, '25-44','M','BLACK'
);
insert into Victim values(
    66928846, '45-64','M','BLACK'
);

insert into Victim values(
    73405770, '25-44','M','BLACK'
);
insert into Victim values(
    73405770, '25-44','F','BLACK'
);
insert into Victim values(
    85977416, '25-44','M','BLACK'
);
insert into Victim values(
    24320687, '18-24','M','WHITE HISPANIC'
);
insert into Victim values(
    27476265,'18-24','M','WHITE HISPANIC'
);
------------------------------------------------
--key, perp_age_group, perp_sex, perp_race
insert into Perpetrator values(
    85977416,'25-44','M','WHITE HISPANIC'
);

insert into Perpetrator values(
    24320687,'<18','M','WHITE HISPANIC'
);
insert into Perpetrator values(
    24320687,'<18','M','BLACK'
);
insert into Perpetrator values(
    24320687,'UNKNOWN','M','BLACK'
);
insert into Perpetrator values(
    27476265,'<18','M','BLACK'
);
insert into Perpetrator values(
    27476265,'25-44','M','BLACK'
);
----------------------------------------------

----lon_lat, lat, long, 
insert into LL_location values(
    'POINT (-73.77534099699994 40.66891477200004)','40.66891477200000','-73.77534099699990'
);
insert into LL_location values(
    'POINT (-73.93130224699998 40.65087729100002)','40.65087729100000','-73.93130224700000'
);
insert into LL_location values(
    'POINT (-73.85786021699995 40.88947350500007)','40.88947350500010','-73.85786021700000'
);
insert into LL_location values(
    'POINT (-73.93566789499994 40.839987567000044)','40.839987567000000','-73.93566789499990'
);

----------------------------------------------
--lon_lat,x,y
insert into Coord_location values(
    'POINT (-73.77534099699994 40.66891477200004)','1046573','183057'
);
insert into Coord_location values(
    'POINT (-73.85786021699995 40.88947350500007)','1023551','263366'
);

insert into Coord_location values(
    'POINT (-73.93566789499994 40.839987567000044)','1002051','245311'
);
insert into Coord_location values(
    'POINT (-73.93130224699998 40.65087729100002)','1003313','176413'
);

------------------------------------------------------
--boro,precinct 
insert into Boro_precinct values(
    'QUEENS',113
);

insert into Boro_precinct values(
    'BROOKLYN',67
);

insert into Boro_precinct values(
    'BRONX',47
);
insert into Boro_precinct values(
    'MANHATTAN',33
);
