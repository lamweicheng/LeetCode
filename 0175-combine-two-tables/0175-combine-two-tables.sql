# Write your MySQL query statement below

# CREATE TABLE Person 
#     AS SELECT 1 AS personId,  "Wang" AS lastName, "Allen" AS firstName UNION
#        SELECT 2            ,  "Alice"           , "Bob"                         ;

# CREATE TABLE Address
#     AS SELECT 1 AS addressId, 2 AS personId, "New York City" AS city, "New York" AS state UNION
#        SELECT 2             , 3            , "Leetcode "            , "California";


#My code as below
SELECT p.firstName, p.lastName, a.city, a.state FROM Person AS p left join Address AS a ON p.PERSONID = a.PERSONID;
