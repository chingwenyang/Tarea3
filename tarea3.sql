SELECT * FROM Flights;	
select Origin, avg(arrdelay), avg (depdelay) from flights group by Origin order by Origin asc;
select Origin,colYear, colMonth, avg(arrdelay) from flights
group by Origin, colYear,colMonth Order by Origin asc;
select City , colYear, colMonth, avg(arrdelay) from flights as f
inner join USAirports as u on u.IATA=f.origin 
group by city,colyear, colmonth order by city asc;
select UniqueCarrier, colYear, colMonth, sum(cancelled) as total_cancelled from flights as f
inner join carriers as c on f.uniqueCarrier=c.carrierCode 
group by UniqueCarrier, colYear,colMonth order by total_cancelled desc ,uniquecarrier,colyear asc;
select TailNum, sum(distance) as totalDistance from flights group by Tailnum order by totalDistance DESC 
LIMIT 2588 OFFSET 1;
SELECT Uniquecarrier, avg(arrdelay) as avgDelay from flights
group by uniquecarrier order by avgDelay desc limit 9;