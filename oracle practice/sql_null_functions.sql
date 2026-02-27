select nvl(commission_pct,0) from hr.EMPLOYEES;

-- Replace NULL Customer_Name with 'Unknown'.

-- select * from orders;
-- select * from hr.EMPLOYEES;
-- select nvl(employee_id, 'unknown') from hr.employees;
-- SELECT NVL(Customer_Name, 'Unknown') AS Customer_Name
-- FROM Orders;

-- Count NULL values in Product_Name
-- SELECT COUNT(*) 
-- FROM hr.employees
-- WHERE commission_pct IS NULL;

-- Find rows where Order_Date is NULL.
-- SELECT * 
-- FROM hr.employees
-- WHERE commission_pct IS NULL;

-- Use COALESCE to return first non-null value.
-- SELECT customer_name,COALESCE(customer_name,'No-null') from orders;

-- Use NVL to replace NULL values.
SELECT NVL(unit_price,0) FROM ORDERS;
SELECT employee_id, NVL(commission_pct,0) commission FROM hr.employees;

-- 7. Use IFNULL function.
SELECT IFNULL(product_name,'null_values') from orders; 

-- 8. Check if column is NULL.
SELECT * FROM ORDERS WHERE product_name IS NULL;

-- 9. Check if column is NOT NULL.
SELECT * FROM ORDERS WHERE PRODUCT_CATEGORY IS NULL;

-- 10. Use NULLIF between two columns.

select nullif(unit_price, quantity) from orders

If expr1 = expr2 → returns NULL

If expr1 ≠ expr2 → returns expr1


-- 11. Replace blank values with NULL.
select nullif(Trim(Customer_Name),'') from orders

-- 12. Count non-null values.
SELECT COUNT(Product_Name) FROM ORDERS WHERE Product_Name IS NOT NULL;

-- 13. Filter records where price is NULL or 0
SELECT COUNT(UNIT_PRICE) FROM ORDERS WHERE UNIT_PRICE IS NULL OR 0;

-- 14. Use CASE to handle NULL values.
select case
        when unit_price is NULL
        then 0
        else unit_price
       end
from order

-- 15. Compare NULL values properly.
SELECT * FROM ORDERS WHERE PRODUCT_NAME IS NULL;

-- 16. Handle NULL in aggregation.

-- 17. Find average excluding NULL values.
SELECT AVG(unit_price) AS average_price FROM ORDERS;

-- 18. Find sum ignoring NULL values.
SELECT SUM(unit_price) AS SUM_PRICE FROM ORDERS;

-- 19. Identify columns containing NULL using metadata.

-- 20. Convert NULL to default system date.
SELECT NVL(order_date, SYSDATE) FROM orders;