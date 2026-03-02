Задание #60 Преподаватели в 11-ых классах
Выведите идентификаторы преподавателей, которые хотя бы один раз за всё время преподавали в каждом из одиннадцатых классов.                                                                                                                                    Поля в результирующей таблице: teacher
SELECT s.teacher
FROM Schedule AS s  
JOIN Class AS c ON c.id = s.class
WHERE c.name LIKE '11%' 
AND s.subject IS NOT NULL
GROUP BY s.teacher
HAVING COUNT(DISTINCT c.id) = (SELECT COUNT(*)
                               FROM Class
                               WHERE name LIKE '11%');
