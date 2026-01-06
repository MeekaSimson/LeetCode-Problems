# Write your MySQL query statement below
-- select MAX(salary) as SecondHighestSalary from Employee 
-- where salary < (Select MAX(salary) from employee) ;
select (
    select distinct salary 
    from employee
    order by salary desc
    limit 1 offset 1
) as SecondHighestSalary;