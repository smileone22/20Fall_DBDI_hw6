-- queries
-- 1. List all people (names are adequate) that have flags in any sort order
select name from Customer_info where flagged_customer=1 order by name asc;

-- 2. List all available scooters in any sort order
select * from Scooter 
where scooter_id NOT IN (select current_borrowed_sc_id from Customer_info where borrow_status=1);

-- 3. List all scooters 
--(scooter model and manufacturer, along with person's name… and when they're due back) 
--that are being borrowed in order of when they're due back ordered by when whey were due increasing 
--(that is, earlier ones appear first, and more recent ones appear later)

select s.model_num, s.manufacturer, cf.name, sui.return_date  
from scooter_usage_info sui
inner join Scooter s on s.scooter_id=sui.scooter_id
inner join Customer_info cf on cf.customer_id=sui.customer_id
where cf.borrow_status=1
order by sui.return_date asc ; 

-- 4. List the top 5 people (names and number of referrals) that have the most referrals sorted by most referrals descending
SELECT name, LENGTH(referral_name  ) - LENGTH(REPLACE(referral_name  , ',', '')) +1 as referral_count
FROM Customer_info order by referral_count desc limit 5;

-- 5. Given a unique identifier for a person, 
-- show all of the dates that person has borrowed a scooter in chronological order (from the first time they borrowed a scooter to the most recent)
select borrow_date
from scooter_usage_info where customer_id='ka123' order by borrow_date asc;


--6. List all of the manufacturers of scooters in your database, even if you don't currently have any of their scooters in your inventory
select distinct manufacturer from Scooter;

