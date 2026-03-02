Задание #40 Предметы Ромашкина П.П.
Выведите название предметов, которые преподает Ромашкин П.П. (Romashkin P.P.). Обратите внимание, что в базе данных есть несколько учителей с такой фамилией.                                                            Используйте конструкцию "as subjects" для указания учебных предметов. Это необходимо для корректной проверки.                                                                                                                                       Поля в результирующей таблице:  subjects
SELECT  DISTINCT  s.name AS subjects
FROM Subject AS s
JOIN Schedule AS sc ON s.id = sc.subject
JOIN Teacher AS t ON t.id = sc.teacher
WHERE t.last_name = 'Romashkin' 
AND t.middle_name LIKE 'P%'
AND t.first_name LIKE 'P%'
ORDER BY subjects;
