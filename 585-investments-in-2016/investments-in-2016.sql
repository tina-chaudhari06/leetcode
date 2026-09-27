SELECT ROUND(SUM(tiv_2016), 2) tiv_2016 
FROM Insurance 
WHERE pid NOT IN (
    SELECT DISTINCT i1.pid
    from Insurance i1
    INNER JOIN Insurance i2
    ON i1.pid != i2.pid and i1.lat = i2.lat AND i1.lon = i2.lon
)
AND pid IN (
    SELECT DISTINCT i1.pid 
    from Insurance i1
    INNER JOIN Insurance i2
    WHERE i1.pid != i2.pid and i1.tiv_2015 = i2.tiv_2015
)
