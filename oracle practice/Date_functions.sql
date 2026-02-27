-- SELECT EXTRACT(YEAR FROM order_date) AS order_year FROM orders;
-- select order_id, to_char(ORDER_DATE, 'Day') from ORDERS;
-- Extract month from Order_Date
-- select extract(month from Order_Date) month_joining from orders;
-- Find current date.
-- select sysdate from ORDERS;
-- Find current timestamp.
-- select systimestamp from ORDERS;
-- Add 7 days to Order_Date.
-- SELECT order_date, order_date + 7 AS new_date FROM orders;
-- Subtract 30 days from Order_Date.
-- select Order_Date,order_date-30 as new_date from orders;
-- select current_date-order_date as difference_date from orders;
-- Find number of months between two dates.

-- SELECT MONTHS_BETWEEn(current_date,hire_date) AS months_betwee
-- FROM hr.EMPLOYEES;
--  select *  FROM orders;
-- SELECT LAST_DAY(order_date) AS last_day FROM orders;
-- SELECT LAST_DAY(SYSDATE) from orders;

-- SELECT LAST_DAY(SYSDATE),TO_CHAR(LAST_DAY(SYSDATE), 'FMDay') AS Last_Day_Name FROM DUAL;
-- SELECT Order_date, TRUNC(MONTHS_BETWEEN (DATE '2029-12-25',Order_date)) as MONTH_DIFF from Orders;
-- Get first day of the year.
-- SELECT TRUNC(SYSDATE, 'YEAR') AS First_Day_Of_Year FROM orders;
-- ADD_MONTHS(TRUNC(SYSDATE,'YEAR'),12)-1
-- SELECT ADD_MONTHS(TRUNC(SYSDATE,'YEAR'),12)-1 AS First_Day_Of_Year FROM orders;
-- Convert string to date.
;
-- SELECT order_date,
--        TO_DATE(order_date, 'DD-MM-YYYY') AS string_format
-- FROM dual;
-- SELECT TO_DATE('25-02-2026', 'DD-MM-YYYY') AS Converted_Date FROM DUAL;
-- Convert date to string.
-- SELECT order_date,
--        TO_CHAR(order_date, 'DD') AS Day_Number
-- FROM orders
-- select to_char((order_date,'day'))as string_format from ORDERS
-- SELECT TO_CHAR(EXTRACT(DAY FROM order_date)) AS string_format
-- FROM ORDERS;
-- select order_id, to_char(ORDER_DATE, 'month') from ORDERS;
-- SELECT TO_CHAR(order_date, 'YYYY') || '-' || TO_CHAR(order_date, 'WW') AS Year_Week FROM ORDERS;
-- Find day name from date.
-- SELECT order_date, TO_CHAR(order_date, 'DD') AS data_name FROM orders;

-- SELECT order_date, TO_CHAR(order_date, 'FMDay') AS day_name FROM orders;
-- Find quarter of the year.
-- select to_char(sysdate,'q') from orders
-- Calculate age from DOB.
-- select dob, round((current_date-dob)/365 ,2) from hr.EMPLOYEES
-- Check if date is weekend
-- SELECT order_date,
--        CASE 
--            WHEN TO_CHAR(order_date, 'D') IN ('1','7')
--            THEN 'Weekend'
--            ELSE 'Weekday'
--        END AS day_type
-- FROM orders;
-- Find next Monday after a given date.
SELECT order_date,
       NEXT_DAY(order_date, 'MONDAY') AS Next_Monday
FROM orders;