-- 1. 사원 테이블에서 부서번호의 중복을 제거하고 조회하기
SELECT DISTINCT DEPARTMENT_ID
           FROM employees;

-- 2. 사원 테이블에서 사원번호가 150인 사원의 정보 조회하기
SELECT *
  FROM employees
 WHERE employee_id = 150;

-- 3. 사원 테이블에서 연봉이 10000 이상인 사원의 정보 조회하기
SELECT *
  FROM employees
 WHERE salary >= 10000;

-- 4. 사원 테이블에서 연봉이 10000 이상 20000 이하인 사원의 정보 조회하기
SELECT *
  FROM employees
 WHERE salary between 10000 AND 20000;

-- 5. 사원 테이블에서 부서번호가 30, 40, 50인 사원의 정보 조회하기
SELECT *
  FROM employees
 WHERE department_id IN(30,40,50);

-- 6. 사원 테이블에서 소속된 부서가 없는 사원의 정보 조회하기
SELECT *
 FROM employees
 WHERE department_id IS NULL;

-- 7. 사원 테이블에서 커미션을 받는 사원의 정보 조회하기
SELECT *
  FROM employees
 WHERE commission_pct IS NOT NULL;

-- 8. 사원 테이블에서 상사가 없는 사원의 정보 조회하기
SELECT *
  FROM employees
 WHERE manager_id IS NULL;

-- 9. 사원 테이블에서 전화번호가 '515'로 시작하는 사원의 정보 조회하기
SELECT * 
  FROM employees
 WHERE phone_number LIKE '515%';

-- 10. 사원 테이블에서 직업이 'MAN'으로 끝나는 사원의 정보 조회하기
SELECT *
  FROM employees
 WHERE job_id LIKE '%MAN';
 
SELECT DISTINCT location_id 
  FROM DEPARTMENTS;
  
SELECT *
  FROM departments
 WHERE department_name LIKE 'A%';
 
SELECT region_id
  FROM countries
 group by region_id;
 
select job_id, salary
  from employees
  group by job_id, salary;
 