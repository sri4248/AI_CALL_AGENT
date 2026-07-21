create database workshop1;
show databases;
use workshop1;
show tables;
select * from IPL;
select * from ipl_messy_dataset_1000;
rename table ipl_messy_dataset_1000 to IPL;
select * from ipl;
alter table ipl rename column player_id to Id;
desc ipl;
alter table ipl modify column season int;
alter table ipl modify column matches int;
alter table ipl modify column innings int;
alter table ipl modify column runs int;
update ipl set runs=Null where runs=" ";
set sql_safe_updates=0;
update ipl set runs=Null where runs="";
select * from ipl;
desc ipl;
alter table ipl modify column runs int;
alter table ipl modify column highest_score int;
alter table ipl modify column Average float;
update ipl set strike_rate = null where strike_rate="";
alter table ipl modify column strike_rate float;
update ipl set player_price_cr = null where player_price_cr="";
alter table ipl modify column fours int;
alter table ipl modify column sixes int;
alter table ipl modify column wickets int;
alter table ipl modify column economy float;
alter table ipl modify column bowling_average float;
alter table ipl modify column catches int;
alter table ipl modify column player_price_Cr float;
desc ipl;
SELECT DISTINCT player_price_cr
FROM ipl;
DESC ipl;
SELECT player_price_cr
FROM ipl
WHERE player_price_cr REGEXP '[^0-9.]';
UPDATE ipl
SET player_price_cr = TRIM(player_price_cr);
ALTER TABLE ipl
MODIFY COLUMN player_price_cr FLOAT;
SELECT player_price_cr,
       LENGTH(player_price_cr),
       HEX(player_price_cr)
FROM ipl
LIMIT 10;
UPDATE ipl
SET player_price_cr = NULL
WHERE player_price_cr = '';
ALTER TABLE ipl
MODIFY COLUMN player_price_cr FLOAT;
SELECT COUNT(*)
FROM ipl
WHERE player_price_cr = '';
desc ipl;
alter table ipl modify column date_updated date;
update ipl set Date_Updated=date_format(str_to_date(Date_Updated,'%d/%m/%y'),'%y-%m-%d') where Date_Updated like '__/__/____';
select * from ipl;
select count(id) from ipl where id is null;
select count(player_name) from ipl where player_name is null;
select count(season)from ipl where season is null;
select count(team)from ipl where team is null;
select count(country)from ipl where country is null;
update ipl set country=null where country="";
select * from ipl;
select count(country)from ipl;
select distinct player_name from ipl;
select count(role)from ipl;
select count(matches)from ipl where matches is null;
select count(innings)from ipl where innings is null;
select count(runs)from ipl;
update ipl set runs=innings*average where runs is null;
select count(highest_score)from ipl;
select count(average)from ipl;
select count(strike_rate)from ipl;
update ipl set strike_rate=runs/100 where strike_rate is null;
update ipl set strike_rate=abs(strike_rate);
select * from ipl;
select count(fours)from ipl;
select count(sixes)from ipl;
select count(wickets)from ipl;
select count(economy)from ipl;
select count(bowling_average)from ipl;
select count(catches)from ipl;
select count(player_price_cr)from ipl;
update ipl set player_price_cr=2.0 where player_price_cr is null;
select * from ipl;
select count(status)from ipl;
select count(date_updated)from ipl;
update ipl set country ="india";
select * from ipl;
select distinct player_name from ipl;
update ipl set player_name=trim(player_name);
select distinct team from ipl;
update ipl set team=(
case
when team="Chennai super kings" then "CSK"
when team="Mumbai Indians" then "MI"
when team="Royal Challengers Bengaluru" then "RCB"
when team="kolkata knight Riders" then "KKR"
when team="Sunrisers Hyderabad" then "SRH"
else team
end
);
select distinct team from ipl;
select distinct role from ipl;
select distinct status from ipl;
select * from ipl;
select distinct * from ipl;
insert into ipl value("P175","MS DHONI",2025,"CSK","INDIA","BOWLER",7,4,361,101,32.39,101.64,77,7,3,6.65,41.5,9,2,"RELEASED","16/08/2024"); 

use workshop1;
desc ipl;
alter table ipl add column venue varchar(100);
select * from ipl;
UPDATE ipl SET venue = CASE
    WHEN team = 'CSK' THEN 'Chepauk'
    WHEN team = 'MI' THEN 'Wankhede'
    WHEN team = 'RCB' THEN 'M. Chinnaswamy'
    WHEN team = 'KKR' THEN 'Eden Gardens'
    WHEN team = 'SRH' THEN 'Uppal'
END
WHERE team IN ('CSK','MI','RCB','KKR','SRH');
SET SQL_SAFE_UPDATES = 0;
























