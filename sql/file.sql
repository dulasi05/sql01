SELECT "cars","mpg","cylinder","weight" from cars 
where "cars" like '%Skylark%'
select "cars","mpg","cylinder","weight" from cars where "cars" like '%Skylark ___'
select left ("cars", 9) from cars
select right ("cars", 6) from cars
select upper ("cars") from cars
select lower ("cars") from cars
select ltrim ("cars") from cars
select rtrim ("cars") from cars
select trim ("cars") from cars
select "cars",length ("cars") from cars
select "cars",substring ("cars",10,9)from cars	