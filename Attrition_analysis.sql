create database employee_attrition;
use employee_attrition;
select *from employee_attirtion_new;
select gender,avg(age) from employee_attirtion_new group by gender;
select attrition from employee_attirtion_new group by attrition;
alter table employee_attirtion_new add column salary_category varchar(50);
update employee_attirtion_new set salary_category=case when monthlyincome<5000 then 'Low salary'
when monthlyincome>=5000 and monthlyincome<=10000 then 'Average salary'
else 'High salary' end ;
select salary_category,count(*) from employee_attirtion_new group by salary_category;
select distinct(department) from employee_attirtion_new;
select department,count(attrition) as num_left from employee_attirtion_new where attrition='Yes' group by department;
select gender,count(attrition) as m_left from employee_attirtion_new where attrition='Yes' group by gender;
alter table employee_attirtion_new add column age_category varchar(50);
update employee_attirtion_new set age_category=case when age between 18 and 30 then 'Young adults'
when age between 30 and 50 then 'Middle aged adults'
else 'Older adults' end ;
select age_category,count(*) from employee_attirtion_new group by age_category;
select age_category,count(attrition) as num_left from employee_attirtion_new where attrition='Yes' group by age_category;
select businesstravel,count(*) as count from employee_attirtion_new group by businesstravel;
select businesstravel,count(*) as F_count from employee_attirtion_new where gender='Female' and attrition='Yes' group by businesstravel;
select businesstravel,count(*) as M_count from employee_attirtion_new where gender='Male' and attrition='Yes' group by businesstravel;
select salary_category, count(*) from employee_attirtion_new where attrition='Yes'and gender='Male' group by salary_category;
select salary_category ,count(*) as p_left from employee_attirtion_new where attrition='Yes'and gender='Female' group by salary_category;
SELECT attrition,AVG(distancefromhome) AS average_distance FROM employee_attirtion_new GROUP BY attrition;
select attrition,avg(jobsatisfaction) as count_yes from employee_attirtion_new group by attrition;
