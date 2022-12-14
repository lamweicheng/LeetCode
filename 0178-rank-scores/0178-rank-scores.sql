# Write your MySQL query statement below

#SELECT S.score, COUNT(DISTINCT T.score) AS "rank" FROM Scores AS S INNER JOIN Scores As T ON S.score <= T.score GROUP BY S.id, S.score ORDER BY S.score DESC;

SELECT S.score, DENSE_RANK() OVER (
    ORDER BY
      S.score DESC
  ) AS 'rank'
FROM
  Scores S;
