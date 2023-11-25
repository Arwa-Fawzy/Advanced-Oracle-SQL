SELECT
  first_name || ' ' || last_name AS "Full Name", job_id
FROM
  employees;

SELECT last_name,salary
FROM
  employees
WHERE
  salary < 5000 OR salary > 12000;
  
SELECT last_name, department_id
FROM employees
WHERE employee_id = 176;


SELECT last_name, hire_date
FROM hr.employees
WHERE
  EXTRACT(YEAR FROM hire_date) = 1994;
  
  
SELECT last_name, hire_date
FROM hr.employees
WHERE manager_id is NULL;

SELECT last_name, job_id, salary
FROM hr.employees
WHERE job_id in ('Sales Representative','Stock Clerk') AND salary NOT IN (2500, 3500, 7000);

SELECT last_name, TO_CHAR(salary, '$999,999.99') AS SALARY
FROM employees;

SELECT SUBSTR(last_name, 1, 8) || RPAD('*', FLOOR(salary / 1000), '*') AS EMPLOYEES_AND_THEIR_SALARIES
FROM hr.employees
ORDER BY salary DESC;

SELECT last_name, TRUNC((SYSDATE - hire_date) / 7, 0) AS TENURE
FROM hr.employees
WHERE department_id = 90
ORDER BY TENURE DESC;



Select * 
from departments;

select department_id, last_name
from employees;

Select * 
from employees;

select commission_pct*2 "cp"
from employees;

select last_name || first_name
from employees;

select last_name ||' is a ' || first_name
from employees;

select department_name || ' department' ||q'['s manager id is ]' || manager_id "manageer"
from departments;

select * 
from departments;

select * from employees;

select distinct manager_id from employees;

describe employees;

select department_name 
from departments;

select  department_id, last_name, first_name
from employees
where DEPARTMENT_ID =90;


select last_name
from employees
where hire_date ='10-feb-96';

select *
from employees
where salary between 2000 and 3000;

select *
from employees
where salary in(3000);

select *
from employees
where salary not in(3000);

select last_name
from employees
where job_id not like '%sa\_' escape '\';

select last_name, hire_date
from employees
order by hire_date;

select manager_id

from employees
where manager_id is null;

select job_id
from employees
where job_id like '%SA\_%' escape '\';

select job_id
from employees
where job_id like '%MAN%';

select job_id
from employees
where job_id like '%SA\%%' escape '\';

select last_name, hire_date, department_id
from employees
order by  department_id desc, hire_date desc ;


select last_name, salary*12 arwa
from employees 
order by arwa;

select  job_id,department_id
from employees 
order by job_id, department_id desc;

select last_name, employee_id
from employees
where employee_id=&employee_id;


select last_name, employee_id, job_id
from employees
where job_id='&job_title';

 define arwa_num=salary
select last_name, salary, employee_id, &arwa_name
from employees
where &condition 
order by &arwa_num;
undefine arwa_num


set verify on
select last_name, employee_id, salary
from employees
where employee_id=&employee_num ;

select last_name, employee_id, salary
from employees
where salary=:salary ;

select :value1, :value2
from dual;

select lower(last_name)

where lower(last_name)='higgins'
from employees;


select employee_id, CASE MOD(employee_id, 5) when 0 then 'True'
else 'false' end as even
from employees;


select concat('hello',last_name)
from employees;

select substr(last_name, 1,3)
from employees;

select length(last_name)
from employees;

select last_name,instr(last_name,'A')
from employees;

select LPAD(salary, 10,'*'), RPAD(salary, 10,'*')
from employees;

select last_name, Replace(last_name,'e','a')
from employees;

select last_name, trim('A'from last_name)
from employees;

select round(29.567,2), trunc(29.567,2), mod(27,3), round(29.567,0), trunc(29.567), round(29.567,-1), trunc(29.567,-1)
from DUAL;

select sysdate 
from dual;

select last_name, (sysdate-hire_date)/7 week
from employees
where department_id=90;

 SELECT TO_CHAR(SYSDATE, 'HH:MI AM DD-MON-YYYY')
 from dual
 
 
 select to_char(sysdate, 'HH:MI AM ') ||
 initcap(to_char(sysdate,'ddspth')) ||
 to_char(sysdate,' "of" Month, YYYY')
 from dual ;
 
 select months_between('1-feb-1990','1-feb-1980')
 from employees;
 
 select last_name, add_months('1-feb-1990',1)
 from employees;
  select next_day('1-feb-1990', 'sunday')
 from dual;
   select last_day('1-feb-1990')
 from dual;
 
 select sysdate
 from dual;
 select to_char(SYSDATE, 'hh24:mi:ss')
 from dual;
 
 select to_char(sysdate,'ddspth')
 from dual;
 
 select to_char(hire_date,'fmdd Month YYYY') , to_char(hire_date,'dd Month YYYY')
 from employees;
 
 select to_char(salary, 'L99,999.0'),to_char(salary, '$99,999.0')
 from employees;
 
 
 undefine fx
 select last_name, hire_date
 from employees
 where hire_date=to_date('May 5, 1990','fxMonth DD, YYYY');
 
 alter session set nls_currency='$';
 select to_char(205,'L999')
 from dual;

select last_name, to_char(hire_date,'DD-Mon-YYYY')
from employees
where hire_date<to_date('01-Jan-90','DD-Mon-RR');



select to_char(next_day(add_months(hire_date,6),'FRIDAY'),'Month ddth,YYYY')
from employees
order by hire_date;
 
select COALESCE((salary+(commission_pct*salary)),commission_pct,salary+2000 )
from employees;

select case mod(salary,2) when 0 then 'True'
when 1 then 'truee', when 2 then 'trueee'
else 'Fale'
end
from employees;


select last_name,salary,job_id, decode(job_id, 'IT_PROG', 1*salary,
                                 'SA_REP', 2*salary,
                                 'AD_VP',3*salary, 
                                 salary)
                                 from employees;

select count(distinct(salary)) as n
from employees;


select avg(commission_pct)
from employees;

select avg(nvl(commission_pct,0))
from employees;

select department_id, department_name, location_id,city
from departments
natural join locations;

select department_id, last_name, location_id, employee_id
from employees 
join departments
using(department_id);

select e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id
from employees e join departments d
on(e.department_id=d.department_id);


select e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id
from employees e join departments d
on(e.department_id=d.department_id)
join locations l
on(d.location_id=l.location_id);

select e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id
from employees e join departments d
on(e.department_id=d.department_id)
join locations l
on(d.location_id=l.location_id)
where e.manager_id=149;

select e.manager_id, e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id
from employees e join departments d
on(e.department_id=d.department_id)
join locations l
on(d.location_id=l.location_id)
and e.manager_id=149;

select worker.last_name, manager.last_name
from employees worker join employees manager
on (worker.employee_id=manager.manager_id);

select e.last_name, e.salary, g.grade_level
from employees e join job_grades g
on e.salary between g.lowest_sal and g.highest_sal;

select e.last_name,e.job_id,e.salary 
from employees e
on(e.salary>e.last_name.Abel);


select last_name, job_id
from employees
group by job_id, last_name;

select hire_date, to_char(hire_date,'DAY')
from employees;