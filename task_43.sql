
Выведите фамилии преподавателей, которые ведут физическую культуру (Physical Culture). Отсортируйте преподавателей по фамилии в алфавитном порядке.
Поля в результирующей таблице:
last_name

Решение:

SELECT t.last_name
FROM Teacher AS t  
JOIN Schedule AS sh ON sh.teacher = t.id
JOIN Subject AS s ON s.id = sh.subject
WHERE s.name = 'Physical Culture'
ORDER BY t.last_name