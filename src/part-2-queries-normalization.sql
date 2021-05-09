-- queries
--a query that involves an inner join,use a comment to describe the query
--Find all the incidents that happened in the longitude and latitude point (lon_lat)at 'POINT (-73.85786021699995 40.88947350500007)'
--For each incident, get the incident key, lon_lat, and each full longitude, latitude, precinct and boro

select Ii.incident_key, Ii.lon_lat,lloc.latitude, lloc.longitude,kp.precinct,bp.boro
from Incident_info Ii
inner join LL_location lloc on lloc.lon_lat=Ii.lon_lat 
inner join Key_precinct kp on kp.incident_key=Ii.incident_key
inner join Boro_precinct bp on kp.precinct=bp.precinct
where Ii.lon_lat='POINT (-73.85786021699995 40.88947350500007)';


--a query that involves an outer join (left, right or full),use a comment to describe the query
--Get all incidents with its incident_key, longitude, latitude, x_coordinate, and y_coordinate 
select Ii.incident_key, lloc.longitude,lloc.latitude, cloc.x_coord_cd, cloc.y_coord_cd
from Incident_info Ii
left outer join LL_location lloc on lloc.lon_lat=Ii.lon_lat
left outer join Coord_location cloc on cloc.lon_lat=lloc.lon_lat;

--a query that involves an inner join and an aggregate function, use a comment to describe the query
-- find the incident with three perpetrators! Get incident_key, occur_date, and occur_time, and concatenation of three perpetrators age_group, sex, and race!
select tmp.incident_key, Ii.occur_date, Ii.occur_time, tmp.age, tmp.sex, tmp.race
from (select incident_key, group_concat(perp_age_group) as age, group_concat(perp_sex) as sex, group_concat(perp_race) as race from Perpetrator group by incident_key having count(incident_key)=3) tmp
inner join Incident_info Ii on tmp.incident_key=Ii.incident_key;