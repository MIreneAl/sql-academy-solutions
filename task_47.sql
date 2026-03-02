Задание #47 Занятия Krauze 30 августа 2019
Сколько занятий провел Krauze 30 августа 2019 г.?                                                                                      Используйте конструкцию "as count" для агрегатной функции подсчета числа занятий. Это необходимо для корректной проверки.                                                                                                                                                   Поля в результирующей таблице: count
SELECT COUNT(s.subject) AS count
FROM Schedule AS s  
JOIN Teacher AS t ON t.id = s.teacher
WHERE s.date = '2019-08-30'
AND t.last_name = 'Krauze';
