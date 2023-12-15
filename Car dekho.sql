create schema cars;
use cars;

-- 1) READ DATA --
select * from car_dekho;

-- 2) TOTAL CARS: TO GET A COUNT OF TATAL RECORDS --
select count(*) from car_dekho;

-- 3) THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE IN 2023? --
select count(*) from car_dekho where year = 2023; #--6--

-- 4) THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS IS AVAILABLE IN 2020,2021,2022? --
select count(*) from car_dekho where year = 2020; #--74--
select count(*) from car_dekho where year = 2021; #--7--
select count(*) from car_dekho where year = 2022; #--7--
-- GROUP BY --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- 5) CLINT ASKED ME TO PRINT THE TOTAL OF ALL CARS BY YEAR. I DON'T SEE ALL THE DETAILS. --
select year, count(*) from car_dekho group by year;

-- 6) CLINT ASKED TO CAR DEALER AGENT HOW MANY DIESEL CAR WILL THERE BE IN 2020? --
select count(*) from car_dekho where year = 2020 and fuel = "Diesel"; #--20--

-- 7) CLINT REQUESTED A CAR DEALER AGENT HOW MANY PETROL CAR WILL THERE BE IN 2020? --
select count(*) from car_dekho where year = 2020 and fuel = "Petrol"; #--51--

-- 8) THE MANAGER TOLD THE EMPLOYEE TO GIVE A PRINT ALL THE FUEL CARS (PETROL, DIESEL AND CNG) COME BY ALL YEAR. --
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- 9) MANAGER SAID THERE WERE MORE THAN 100 CARS IN A GIVEN YEAR, WHICH YEAR HAD MORE THAN 100 CARS? --
select year, count(*) from car_dekho group by year having count(*) > 100;

-- 10) MANAGER SAID THERE WERE MORE THAN 100 CARS IN A GIVEN YEAR, WHICH YEAR HAD LESS THAN 50 CARS? --
select year, count(*) from car_dekho group by year having count(*) < 50;

-- 11) THE MANAGER SAID TO THE EMPLOYEE ALL CARS COUNT DETAILS BETWEEN 2015 AND 2023; WE NEED A COMPLETE LIST. --
select count(*) from car_dekho where year between 2015 and 2023; #--4124--

-- 12) THE MANAGER SAID TO THE EMPLOYEE ALL CARS DETAILS BETWEEN 2015 TO 2023 WE NEED COMPLETE LIST. --
select * from car_dekho where year between 2015 and 2023;

