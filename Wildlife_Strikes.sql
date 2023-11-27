USE aircrafts;

#Total Incidents
SELECT * from mytable;

#Incident count by the year
Select year(IncidentDate) as IncidentYear, count(*) as IncidentCount
from mytable
group by IncidentYear;

#Incident count by the month
Select monthname(IncidentDate) as IncidentMonth, count(*) as IncidentCount
from mytable
group by IncidentMonth;


#Top 10 Incident count by Species
SELECT speciesName as Species, count(*) as IncidentCount
from mytable
group by Species
order by IncidentCount desc
limit 10;

#Operator Analysis
Select distinct operator,count(*) as IncidentCount
from mytable
group by operator
order by IncidentCount desc
limit 15;

#Aircraft Analysis
Select distinct aircraft,count(*) as IncidentCount
from mytable
group by aircraft
order by IncidentCount desc
limit 10;

#Airport Analysis
Select State,Airport,count(*) as IncidentCount
from mytable 
GROUP BY State , Airport
having IncidentCount > 650
order by IncidentCount desc;

#Flight Impact analysis based on if warning was issued
SELECT FlightImpact, count(*) as IncidentCount
FROM mytable
WHERE WarningIssued = 'Y' and FlightImpact != ''
GROUP BY FlightImpact
ORDER BY IncidentCount DESC;

#Precipitation Impact
select distinct precipitation,count(*) as IncidentCount
from mytable
group by precipitation
order by IncidentCount desc;
    
    
