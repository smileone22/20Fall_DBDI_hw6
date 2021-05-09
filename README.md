# Homework 6

## Part 1 - Database Design Notes
Tables
- Scooter 
    - This table is a list of scooters with unique scooter_id that is in the inventory 
    - There could be multiple scooters with the same model number and the same manufacturer, yet the scooter_id allows differentiation. 
- Customer_info
    - This table is a list of customers with unique customer id created by the business
    - borrow_status is 1 when the customer is currently using a scooter in the inventory, 0 when not
    - problem: If there are customers with same names, it is hard to differentiate who ( should have changed it to customer_id)
    - There could be customers that have the information listed but do not have any scooter_usage record
- scooter_usage_info
    - customerid_borrow_date is a combination of customer_id and borrow_date, which is a primary key for this table 
    - problem: It will not be unique if a person borrows another scooter after returning within a single day ( so it should have been the whole datetime)
    - late_return says late if returned late, not late if not. 
    - usage_in_hours counts the passed time from borrow datetime
- Freeform
    - Notes for a scooter usage_info
    - broken_beyond_repair 0 if it is not the stage where the scooter is broken beyond repair and 1 if the scooter is broken so badly that is should be deleted from the inventory
    - note_number allows differentiation between many notes for one scooter_usage_info  

Relationship
>One customer info and zero/many scooter_usage_info

>one scooter_usage_info to zero/many freeform notes

For each scooter in Scooter, there could be many usage_record
> one scooter to zero/many scooter_usage_info

Scooters could be rent through checking the borrow_status( 0 when it is available for rent and 1 when it is already being used by another customer)
and the currently borrowing scooter_id (current_borrowed_sc_id).

Since there could be many freeform notes to a scooter_usage_info, there could be a number of free form notes per scooter_usage_info uniquely identified by note_number, which starts from 1. 


## Part 2 - Data Source Documentation 
## About the Data

1. Name / Title: NYPD Shooting Incident Data (Historic)
2. Link to Data: https://data.cityofnewyork.us/Public-Safety/NYPD-Shooting-Incident-Data-Historic-/833y-fsy8/data 
3. Source / Origin: 
	* Author or Creator: Police Department (NYPD)
	* Publication Date: 11/1/2018
	* Publisher: NYC OpenData
	* Version or Data Accessed: Updated July 16, 2020
4. License: The license for this dataset is unspecified
5. Can You Use this Data Set for Your Intended Use Case? Yes. The CSV file should be opened using an appropriate tool for data exploration. For assignment. 

## Format

### Overview

Format: csv file 
Size: 3.9MB
Number of Records: 21626 Rows 19 Columns


### Sample of Data
INCIDENT_KEY    OCCUR_DATE  OCCUR_TIME  BORO    PRECINCT    JURISDICTION_CODE   LOCATION_DESC   STATISTICAL_MURDER_FLAG PERP_AGE_GROUP  PERP_SEX    PERP_RACE   VIC_AGE_GROUP   VIC_SEX VIC_RACE    X_COORD_CD  Y_COORD_CD  Latitude    Longitude   Lon_Lat
74146165    08/14/2010  3:11:00 QUEENS  113 0       FALSE               25-44   M   BLACK   1046573 183057  40.66891477200000   -73.77534099699990  POINT (-73.77534099699994 40.66891477200004)
66928846    10/17/2009  18:03:00    BROOKLYN    67  0       TRUE                45-64   M   BLACK   1003313 176413  40.65087729100000   -73.93130224700000  POINT (-73.93130224699998 40.65087729100002)
29114164    05/18/2007  23:00:00    BROOKLYN    75  0       FALSE               25-44   M   BLACK   1016292 176228  40.65033205800010   -73.88452947900000  POINT (-73.884529479 40.65033205800006)
85180336    06/09/2012  17:15:00    BROOKLYN    81  0       FALSE               25-44   M   BLACK   1005597 188673  40.68452304300010   -73.92303235700000  POINT (-73.92303235699995 40.68452304300007)
73405770    06/27/2010  4:14:00 BRONX   47  0       FALSE               25-44   M   BLACK   1023551 263366  40.88947350500010   -73.85786021700000  POINT (-73.85786021699995 40.88947350500007)
33397043    07/26/2007  23:05:00    QUEENS  110 0       FALSE               18-24   M   BLACK   1015948 210428  40.74420426600010   -73.88560822899990  POINT (-73.88560822899994 40.74420426600005)
185483181   07/21/2018  4:15:00 QUEENS  114 0       FALSE   25-44   M   BLACK   25-44   M   BLACK   1,003,963   214,344 40.75498753 -73.92884875    POINT (-73.92884875 40.75498753)
137804320   07/20/2014  1:40:00 QUEENS  113 0       FALSE               18-24   M   BLACK   1049943 182958  40.668618676000000  -73.76319392400000  POINT (-73.76319392399995 40.668618676000044)
82323802    12/25/2011  3:50:00 QUEENS  113 0       FALSE               18-24   M   BLACK   1040038 185061  40.67445888000000   -73.79888153400000  POINT (-73.79888153399997 40.67445888000003)
74568517    09/11/2010  21:40:00    BRONX   43  0       FALSE               18-24   M   BLACK   1018791 240921  40.82788868500010   -73.87519150200000  POINT (-73.87519150199995 40.82788868500006)
84075119    04/05/2012  22:46:00    BRONX   40  0       FALSE               18-24   M   BLACK   1006853 233369  40.80719918600010   -73.91835350200000  POINT (-73.91835350199995 40.807199186000055)
92386262    08/30/2013  4:14:00 QUEENS  110 0       FALSE               18-24   M   BLACK   1026084 216284  40.76023534300000   -73.84899259200000  POINT (-73.84899259199995 40.76023534300003)

### Fields or Column Headers
* Field/Column 1: INCIDENT_KEY(int): Randomly generated persistent ID for each incident
* Field/Column 2: OCCUR_DATE(date): Exact date of the shooting incident
* Field/Column 3: OCCUR_TIME(text): Exact time of the shooting incident
* Field/Column 4: BORO(text) : Borough where the shooting incident occurred
* Field/Column 5: PRECINCT(int): Precinct where the shooting incident occurred
* Field/Column 6: JURISDICTION_CODE(int): 0(Patrol), 1(Transit) and 2(Housing) represent NYPD whilst codes 3 and more represent non NYPD jurisdictions
* Field/Column 7: LOCATION_DESC(text): Location of the shooting incident
* Field/Column 8: STATISTICAL_MURDER_FLAG(text): Shooting resulted in the victim’s death which would
be counted as a murder
* Field/Column 9: PERP_AGE_GROUP (text): Perpetrator’s age range
* Field/Column 10: PERP_SEX (text): Perpetrator’s sex description
* Field/Column 11: PERP_RACE (text): Perpetrator’s race description
* Field/Column 12: VIC_AGE_GROUP (text) : Victim’s age range
* Field/Column 13: VIC_SEX (text): Victim’s sex description
* Field/Column 14: VIC_RACE (text): Victim’s race description
* Field/Column 15: X_COORD_CD (int): Midblock X-coordinate for New York State Plane
Coordinate System, Long Island Zone, NAD 83, units
feet (FIPS 3104)
* Field/Column 16: Y_COORD_CD (int): Midblock Y-coordinate for New York State Plane
Coordinate System, Long Island Zone, NAD 83, units
feet (FIPS 3104)
* Field/Column 17: Latitude (real): Latitude coordinate for Global Coordinate System, WGS 1984, decimal degrees (EPSG 4326)
* Field/Column 18: Longitude (real): Longitude coordinate for Global Coordinate System,
WGS 1984, decimal degrees (EPSG 4326)
* Field/Column 19: Lon_Lat (text) : both latitude, longitude together on a poitn
           
- There are duplicate incident keys because there could be several victims and several perpetrators 
- For the diagram, the relation is in second normal form and attributes that are not primary keys have to depend on pk. no transitive functional dependency


