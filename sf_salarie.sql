use sf_salary_data;
-- 1. show all columns and rows in the table

select * from salaries;

-- 2. show only the employeeName and jobtitle columns

select EmployeeName,JobTitle
from salaries;

-- 3. show the number of employees in the table

select count(*) as total_employee
from salaries;

-- 4. show the unique job title in the table

select distinct JobTitle
from salaries;

-- 5. show the job title and overtime pay for all employees with overtime pay grater than 1000.

select JobTitle, EmployeeName
from salaries
where OvertimePay > 1000;

-- 6. show the average base pay for all employees  

select round(avg(BasePay),0) as average_base_pay
from salaries;

-- 7. show the top 10 heighest paid employees

select EmployeeName,TotalPay
from salaries
order by TotalPay desc limit 10;

-- 8.show the average basepay, OvertimePay, and OtherPay for each employee;

select EmployeeName, round(BasePay+OvertimePay+OtherPay/3,0) as avg_all_pays  
from salaries;

-- 9. show all employee who have the word "Manager" in their job title.
select EmployeeName,JobTitle
from salaries
where JobTitle like "%Manager%";

-- 10. show all employee a jobs title not equal to "Manager" in their job title

select EmployeeName,JobTitle
from salaries
where JobTitle not like "%Manager%";

-- 11. show all employees with a total pay between 50,000 to 75,000.

select EmployeeName,TotalPay 
from salaries
where TotalPay between 50000 and 75000; 

-- 12. show all employees with a base pay less than 50,000.
-- or a total pay greater than 100,000;

select
*
from salaries
where BasePay < 50000 or TotalPay > 100000 ;

-- 13. show all employees with a total pay benefits value between 125,000 and 150,000 a job title containing the word "Director"

select *
from salaries
where TotalPayBenefits between 25000 and 150000
and JobTitle like "%Director%";


-- 14. show all employees ordered by their total pay benefits in descending order.

select EmployeeName,TotalPayBenefits
from salaries
order by TotalPayBenefits desc;

-- 15. show all job titles with an average basePay of at least 100,000 and order them by the average basePay in descending order

select JobTitle, round(avg(BasePay),0) as "avgbasepay"
from salaries
group by JobTitle
having avgbasepay >= 100000
order by avgbasepay desc; 

-- 16. Delete the column

select * 
from salaries;
alter table salaries
drop column Notes;

-- 17. Update the base pay of all employees with the jobtitle containing "Manager" by increasing it by 10%.

update salaries
set BasePay = BasePay * 1.1
where JobTitle like "%Manager%";

select * 
from salaries;

-- 18. delete all employees who have no Base pay.

select count(*)
from salaries
where OvertimePay = 0;

delete from salaries
where OvertimePay = 0;
 



  

 
