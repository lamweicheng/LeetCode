# Write your MySQL query statement below

SELECT salesperson.name FROM salesperson WHERE salesperson.sales_id NOT IN 
    (SELECT orders.sales_id FROM orders WHERE orders.com_id IN 
    (SELECT company.com_id FROM company WHERE company.name = "RED"));
