-- Find sine value of an angle.
-- SELECT SIN(30 * (ACOS(-1)/180)) AS sine_value
-- FROM orders;

-- Find cosine value of an angle.
-- SELECT COS(60 * (ACOS(-1)/180)) AS cosine_value
-- FROM DUAL;

-- Find tangent value.
-- SELECT TAN(3.14159265358979/4) AS tangent_value
-- FROM DUAL;

-- Convert degrees to radians.
-- SELECT 30 * (ACOS(-1)/180) AS radians
-- FROM DUAL;

-- Convert radians to degrees.
-- SELECT 1 * (180 / ACOS(-1)) AS degrees
-- FROM DUAL;

-- Find logarithm (base 10) of a number.
-- SELECT LOG(10, 100) AS log_value
-- FROM DUAL;

-- Find natural log of a number.
-- SELECT LN(EXP(1)) AS natural_log
-- FROM DUAL;

-- Find square of a number.
-- SELECT UNIT_PRICE,
--        POWER(UNIT_PRICE, 2) AS square_value
-- FROM orders;

-- Find cube of a number.
-- SELECT UNIT_PRICE,
--        POWER(UNIT_PRICE, 3) AS square_value
-- FROM orders;

-- Calculate factorial of a number.
-- CREATE OR REPLACE FUNCTION factorial(n NUMBER)
-- RETURN NUMBER IS
--     result NUMBER := 1;
-- BEGIN
--     FOR i IN 1..n LOOP
--         result := result * i;
--     END LOOP;
--     RETURN result;
-- END;

-- WITH fact (n, result) AS (
--     SELECT 1, 1 FROM DUAL
--     UNION ALL
--     SELECT n+1, result*(n+1)
--     FROM fact
--     WHERE n < 5
-- )
-- SELECT result
-- FROM fact
-- WHERE n = 5;

-- Find greatest value among three numbers.
-- SELECT n1, n2, n3,
--        GREATEST(n1, n2, n3) AS greatest_value
-- FROM dual;

-- SELECT n1, n2, n3,
--        CASE
--            WHEN n1 >= n2 AND n1 >= n3 THEN n1
--            WHEN n2 >= n1 AND n2 >= n3 THEN n2
--            ELSE n3
--        END AS greatest_value
-- FROM dual;

-- Find least value among three numbers.
-- select n1,n2,n3,
--     case
--         when n1<=n2 and n1<=n3 then n1
--         when n2<=n3 and n2<=n1 then n2
--         else n3
--     end as lowestvalue
-- from dual;

-- SELECT LEAST(price1, price2, price3) AS lowest_price FROM orders;

-- Calculate variance of sales.
-- SELECT VARIANCE(sales) AS variance_sales FROM orders

-- Calculate standard deviation of sales.
-- SELECT STDDEV_SAMP(sales) AS stddev_sales
-- FROM orders;

-- Find average deviation.
-- SELECT 
-- AVG(ABS(sales - (SELECT AVG(sales) FROM orders))) 
-- AS avg_deviation
-- FROM orders;

-- Calculate geometric mean.
-- SELECT 
-- EXP(AVG(LN(sales))) AS geometric_mean
-- FROM orders;

-- Calculate harmonic mean.
-- SELECT 
-- COUNT(sales) / SUM(1/sales) AS harmonic_mean
-- FROM orders;

-- Find sum of squares.
-- SELECT 
-- SUM(POWER(sales, 2)) AS sum_of_squares
-- FROM orders;

-- Calculate correlation between two columns.
-- SELECT 
-- CORR(sales, profit) AS correlation
-- FROM orders;

-- Calculate regression slope.
-- SELECT REGR_SLOPE(profit, sales) AS regression_slope
-- FROM orders;