select * from DEPARTMENTS
select * from employees

select * from employees where salary > any
(select avg_salary from (select department_id ,avg(salary) as avg_salary from employees
group by department_id) as temp)

select* from employees where salary< all
(select salary from employees where Department_id=7008)