select "name","joining date" from student where "joining date"='2022-07-25'
select "name","joining date" from student where "joining date">'2022-09-25'
select "name","joining date" from student where "joining date" between '2022-08-01'and '2022-08-30'
select * from student
where "joining date">='2022-08-01' and "joining date"<='2022-08-30'
select "name",extract (year from "enddate") as "joined year" from student
select "name","joining date" from student where extract (year from "enddate")=2023
select "name","joining date" from student where extract (month from "joining date")= 8
select "name","joining date" from student where extract (year from "enddate") = 2023
select "origin" ,case when "origin" ='US' then 1
when "origin"='Japan' then 2
when "origin"='eropen' then 3
end as "originmap" from cars
select replace ("origin",'US','USA')as origin from cars 
select "cars" ||':'|| "weight" from cars
select "cars" ||':'|| "weight" as "cars : weight" from cars
select "cars","weight"*1000 as "weight(grams)" from  cars
select "cars","mpg"/"cylinder" as "mpg/cyl" from cars
 select count ("weight") as total_rows from cars
select max ("weight") as max_weight from cars
select min ("weight") as min_weight from cars
select sum ("weight") from cars
select "cars" ,"weight" from cars where "weight" =(select min ("weight")from cars)
select count ("origin") from cars
select count (distinct("origin")) from cars
select count (*) as items,min ("weight")as min_weight,max ("weight")as max_weight,avg ("weight") as avg_weight from cars