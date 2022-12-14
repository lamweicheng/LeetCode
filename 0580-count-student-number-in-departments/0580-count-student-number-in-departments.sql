# Write your MySQL query statement below

SELECT dept_name, COUNT(student_id)AS student_number FROM Department LEFT OUTER JOIN student ON Department.dept_id = student.dept_id GROUP BY department.dept_name ORDER BY student_number DESC ;
