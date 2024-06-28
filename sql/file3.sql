--group by operation
select "origin" ,count (*) from cars group by "origin"
select "cars" ,count (*) from cars group by "cars" having count (*)>1
select "cars" ,count (*) from cars where "origin"='japan' group by "cars" having count (*) >1	
select "cars",count (*) as "count" from cars group by "cars" having count (*) >1 order by "count" desc 
select distinct ("cylinder") from cars where "weight" <2000
--sub-query
select "cars","cylinder","weight" from cars where "cylinder" in (select distinct("cylinder") from cars  where "weight"<2000)order by "weight" desc
select "cars","cylinder","weight" from cars where "cylinder" in (select distinct ("cylinder")from cars where "weight"in (select min ("weight")from cars where "origin"='japan')) order by "weight" desc
WITH CTE_CARS AS (SELECT "cars","weight","origin" FROM cars WHERE "origin"= 'Europe' AND "cylinder">5) select *from CTE_CARS WHERE "weight"< 4000
--combining query result	
select "cars", "cylinder" from cars where cylinder =6
union
select cars,cylinder from cars where origin in ('Japan','Europe')
select "cars", "cylinder" from cars where cylinder =6
union
select cars,cylinder from cars where origin in ('Japan','Europe')
order by cylinder desc