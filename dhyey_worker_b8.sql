create database p ;
CREATE TABLE worker (
    ID INT NOT NULL PRIMARY KEY,
    NAME VARCHAR(20) NOT NULL,
    AGE INT NOT NULL,
    ADDRESS CHAR(25),
    SALARY DECIMAL(18,2)
);

insert into worker
 VALUES 
 (1,'ramesh',32,'ahmemdabad',2000.00),
(2,'khiln', 25,'delhi',1500.00),
(3,'Kaushik',23,'kota',2000.00),
(4, 'Chaitali', 25, 'Mumbai', 6500.00),
(5, 'Hardik', 27, 'Bhopal', 8500.00),
(6, 'Komal', 22, 'MP', 4500.00),                   
(7, 'Muffy', 24, 'Indore', 10000.00);

 
select * from worker ;
select name,age from worker ;

select * from worker where age>25;

select * from worker where salary<5000;

select * from worker where ADDRESS='delhi';

select * from worker where name like'k%' ;

select * from worker where name like '%i';

select * from worker where name like '%a%';

select * from worker where salary=2000;

select * from worker where age between 23 and 27 ;

select  max(salary)
from worker ;

select  min(salary)
from worker ;

select  avg(salary)
from worker ;

select count(name)
from worker ;

select count(name)
from worker 
where age<25;


select count(name)
from worker 
where salary<5000;

select avg(age)
from worker;

select sum(salary)
from worker 
where ADDRESS='Mumbai';

select max(salary)
from worker 
where age>25;

select name
from worker
order by name ASC;

select salary 
from worker
order by salary desc ;

select name
from worker 
order by age ASC , salary desc ;

select SALARY
from worker
order by salary desc 
limit 3 ;


select address
from worker 
order by address ASC;

select name 
from worker
where name='ramesh';

select name
from worker
where age != 25;

select name
from worker
where address !='mp';

select name 
from worker
where name like'C%' and salary >5000;

select * 
from worker 
where age>25 and salary>5000;

select * 
from worker 
where age<25 or salary>8000;

select *
from worker where name like 'K%' or address='delhi';

select * from worker where age=25 and address='mumbai';

select * from worker where salary<5000 or age>30;

select * from worker where name like '%u%';

select *  from worker where name like 'm%y';

select * from worker where name like '%o%';

select * from worker where name like '______';

select * from worker where address like 'b%';

select * from worker where age in (22,25,27);

select * from worker where salary not in(2000,1500);

select * from worker where address in ('delhi', 'Mumbai', 'Bhopal');

select * from worker where salary between 2000 and 5000 ;

select * from worker where age between 23 and 30 ;

select * from worker order by salary desc
limit 1 offset 1;

SELECT * FROM worker
WHERE SALARY = (SELECT AVG(SALARY) FROM worker);

SELECT * FROM worker
WHERE NAME = (
    SELECT NAME FROM worker
    WHERE AGE = (SELECT MIN(AGE) FROM worker)
    LIMIT 1
);

select  distinct(address),count(name)
from  worker 
group by  address , name ;

 SELECT * FROM worker
WHERE LENGTH(NAME) = (
    SELECT MAX(LENGTH(NAME)) FROM worker
);

