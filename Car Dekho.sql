use cars;
-- Read Data---
Select * from car_dekho;
-- Total cars: to get a count of total records--
select count(*) from car_dekho; 
-- The Managers asked how many cars will be available in 2023?---
select count(*) from car_dekho
where year=2023;

-- The Managers asked how many cars will be available in 2020,2021,2022?---

select count(*) from car_dekho 
where year = "2020";
 ----  74  ---

select count(*) from car_dekho 
where year="2021";

---  7  --
select count(*) from car_dekho 
where year="2022";
--- 7  ---
--- Groupby by----

select year,count(*) from car_dekho where year in (2020,2022,2023) group by year;

-- Client ask me print totalof all cars by year. I  don't see all details--
select year, count(*) from car_dekho group by year;

-- Client asked to car dealer agent how many diesel car will be there in 2020?--

select fuel,count(*) from car_dekho
where year=2020 and fuel="diesel";
 
 #Client requested a car dealeragent how many petrol cars will there in 2020
 
 select fuel,count(*) from car_dekho
where year=2020 and fuel="petrol"; #51

# The manager told the employee to give a print all the fuel cars (petrol, diesel,and CNG) sepoarately comes  by all year.

SELECT fuel, year, COUNT(*) AS total_cars FROM car_dekho
WHERE fuel IN ('Petrol', 'Diesel', 'CNG')
GROUP BY fuel, year
ORDER BY fuel, year desc;

#manager said there were more than 100cars in a given year, which year had more than 100cars? 
select count(*) as Total_cars, year from car_dekho
group by year
having  total_cars>100
order by year asc;

# The manager said to the employee all cars count details between 2015 and 2023;
 
 select count(*) as Total_cars from car_dekho
 where year between 2015 and 2023;

