select * from customers
select * from accounts
select * from loans
select * from employees
select * from branches
select * from transactions


SELECT COUNT(*) FROM branches;
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM accounts;
SELECT COUNT(*) FROM employees;
SELECT COUNT(*) FROM loans;
SELECT COUNT(*) FROM transactions;

-- Q 1 total customers

select count(distinct customer_id) as total_customer
from customers

-- Q 2 total accounts

select count(distinct account_id) as total_account
from accounts

-- Q 3 total transaction amount

select sum(amount) as total_amount
from transactions

-- Q 4 total loan amount

select sum(loan_amount) as total_loan_amount
from loans


-- Q 5 valueble customer segment

select c.customer_segment, sum(a.current_balance) as total_balance
from accounts a
join customers c
on a.customer_id = c.customer_id
group by c.customer_segment
order by total_balance desc


-- Q 6 popural account type

select account_type, count(account_id) as total_account
from accounts
group by account_type
order by total_account desc

-- Q 7 avg account balance of customer

select avg(current_balance) avg_balance
from accounts

-- Q 8 most customers branch

select b.branch_name, count(distinct c.customer_id) as total_customers
from customers c
join branches b
on c.branch_id = b.branch_id
group by b.branch_name
order by total_customers desc


-- Q 9 most usable transaction type

select transaction_type,
count(distinct transaction_id) as total_transactions
from transactions
group by transaction_type
order by total_transactions desc

-- Q 10 most usable transaction channel

select channel,
count(distinct transaction_id) as total_transactions
from transactions
group by channel
order by total_transactions desc


-- Q 11 monthly transaction trend

select TO_CHAR(transaction_date, 'YYYY-MM') as month,
sum(amount) as total_amount
from transactions
group by month
order by month


-- Q 12 most vlaue generated branches

select b.branch_name, sum(t.amount) as total_amount
from transactions t
join branches b
on t.branch_id = b.branch_id
group by b.branch_name
order by total_amount desc


-- Q 13  high value transaction attern

select channel,
count(transaction_id) as total_transactions,
sum(amount) as total_amount
from transactions
where amount>100000
group by channel
order by total_amount

-- Q 14 popular loan type

select loan_type, count(distinct loan_id) as total_loan
from loans
group by loan_type
order by total_loan desc

-- Q 15 loan approval rate 

select
count(case when approval_status = 'Approved' then 1 end) * 100.0 / count(loan_id) as approval_rate
from loans;

-- Q 16 most loan amount generated branches

select b.branch_name, sum(l.loan_amount) as total_loan_amount
from loans l
join branches b
on l.branch_id = b.branch_id
group by branch_name
order by total_loan_amount desc


-- Q 17 defauletd loan amount

select sum(loan_amount) as total_defaulted_loan_amount
from loans
where loan_status = 'Defaulted'


-- Q 18 defaulted amount rate

select loan_type,
count(case when loan_status = 'Defaulted' then 1 end) * 100.0 / count(loan_id) as default_rate
from loans
group by loan_type
order by default_rate desc;


-- Q 19 dafulted loan amount by customer segment

select c.customer_segment, sum(l.loan_amount) as total_defaulted_loan_amount
from loans l
join customers c
on l.customer_id = c.customer_id
group by c.customer_segment
order by total_defaulted_loan_amount desc


-- Q 20 overall perfomance

select extract(year from transaction_date) as year,
sum(amount) as total_transaction_amount
from transactions
group by year
order by year

--- overall perfomance
select
extract(year from transaction_date) as year,
sum(amount) as total_transaction_amount,
sum(amount) - lag(sum(amount)) over (order by extract(year from transaction_date)) as increase_decrease
from transactions
group by year
order by year;


-- Q 21 total employees

select count(distinct employee_id) as total_employees
from employees


-- Q 22 TOTAL EMPLOYEES BY BANK

select b.branch_name, count(distinct e.employee_id) as total_employees
from employees e
join branches b
on e.branch_id = b.branch_id
group by b.branch_name
order by total_employees


-- Q 23 COMMON JOB ROLE

select role,
count(employee_id) as total_employees
from employees
group by role
order by total_employees desc

-- Q 24 EMPLOYEE STATUS 

select employment_status,
count(employee_id) as total_employees
from employees
group by employment_status
order by total_employees desc


-- Q 25 COMPARISON OF EMPLOYEE AND CUSTOMER BY BRANCH

select
b.branch_name,
count(distinct e.employee_id) as total_employees,
count(distinct c.customer_id) as total_customers
from branches b
join employees e
on b.branch_id = e.branch_id
join customers c
on b.branch_id = c.branch_id
group by b.branch_name
order by total_customers desc