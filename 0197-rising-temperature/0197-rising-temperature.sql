# Write your MySQL query statement below

SELECT weather.id FROM Weather Join Weather AS W ON DATEDIFF(weather.recordDate, W.recordDate) = 1 AND weather.temperature > w.temperature;

