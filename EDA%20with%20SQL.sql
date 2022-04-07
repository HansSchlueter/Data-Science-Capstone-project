select DISTINCT(LAUNCH_SITE) from SPACEYTBL;
SELECT LAUNCH_SITE from SPACEYTBL where (LAUNCH_SITE) LIKE 'CCA%' LIMIT 5;
select * from SPACEYTBL where LAUNCH_SITE like 'CCA%' fetch first 5 row only;
select sum(PAYLOAD_MASS__KG_) as Sum_Payloadmass from SPACEYTBL;
select avg(PAYLOAD_MASS__KG_) as AVG_Payloadmass from SPACEYTBL;
select avg(PAYLOAD_MASS__KG_) as "Avg Payload Mass F9 v1.1" from SPACEYTBL 
	where (Booster_Version) LIKE 'F9 v1.1%'; 
select min(DATE) as "First sucesfull landing on Ground path" from SPACEYTBL
	where (LANDING__OUTCOME) LIKE 'Success (ground pad)';
select (DATE) as "sucesfull landing on Ground path" from SPACEYTBL
	where (LANDING__OUTCOME) LIKE 'Success (ground pad)';
select BOOSTER_VERSION from SPACEYTBL 
	where LANDING__OUTCOME='Success (drone ship)' 
	and PAYLOAD_MASS__KG_ BETWEEN 4000 AND 6000;
select mission_outcome, count(*) as " "
	from SPACEYTBL group by mission_outcome;
select BOOSTER_VERSION, payload_mass__kg_ as MaxPayLoadMass, DATE   from SPACEYTBL 
	where PAYLOAD_MASS__KG_=(select max(PAYLOAD_MASS__KG_) from SPACEYTBL);
select date, booster_version, launch_site, landing__outcome from SPACEYTBL 
	where landing__outcome ='Failure (drone ship)' and year(date)=2015;
SELECT LANDING__OUTCOME, COUNT(*) as Count  FROM SPACEYTBL 
	WHERE  (Date Between '2010-06-04' and '2017-03-20')
	GROUP By LANDING__OUTCOME
	ORDER By Count DESC ;
