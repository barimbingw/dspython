/*sample_data => Nama Tabel*/

SELECT a.id  FROM sample_data AS a
WHERE a.level = 5;

SELECT COUNT(a.id) AS Total  FROM sample_data AS a
WHERE a.level = 5 AND 
DATEDIFF(a.date, CONVERT(varchar, GETDATE(), 104)) < 30;

SELECT a.id T
FROM sample_data AS a
WHERE a.hour BETWEEN 15 AND 18
ORDER BY a.avg_speed_kmh ASC
LIMIT 3;

SELECT hour_level, COUNT(hour_level)
FROM sample_data AS a
GROUP BY concat_ws(' _', a.hour, a.level) AS hour_level
ORDER BY COUNT(hour_level) ASC;
LIMIT 3;