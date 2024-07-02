SELECT * FROM shark_tank.data;

-- what is the total number of episodes in this season of shark tank india? 

select max(Epno) from shark_tank.data; 


-- Total number of pitches on the show? 

select count(distinct Brand) from shark_tank.data; 


-- total number of male participants

select sum(Male) from shark_tank.data;


-- total number of female participants

select sum(Female) from shark_tank.data;


-- gender ratio

select sum(Female)/sum(Male) from shark_tank.data;


-- total amount invested

select sum(AmanAmountInvested) from shark_tank.data;


-- avg equity taken

select avg(a.equitytakenp) from
(select * from shark_tank.data where equitytakenp>0) a


-- highest deal taken

select max(amountinvestedlakhs) from shark_tank.data;


-- highest equity taken

select max(equitytakenp) from shark_tank.data;


-- All the startup teams that had at least one woman in their team 


select sum(a.female_count) from(select female, case when female>0 then 1 else 0 end as female_count from shark_tank.data)a;



-- avg team members

select avg(teammembers) from shark_tank.data;


-- amount invested per deal

select avg(a.amountinvestedlakhs) amount_invested_per_deal from
(select * from shark_tank.data where deal!='No Deal') a



-- avg age group of contestants

select avgage,count(avgage) cnt from shark_tank.data group by avgage order by cnt desc


-- location group of contestants

select location,count(location) cnt from shark_tank.data group by location order by cnt desc


-- sector group of contestants

select sector,count(sector) cnt from shark_tank.data group by sector order by cnt desc



-- partner deals

select partners,count(partners) cnt from shark_tank.data  where partners!='-' group by partners order by cnt desc;





















