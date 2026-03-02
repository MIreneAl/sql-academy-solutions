Задание #45 Самые используемые кабинеты
Какие кабинеты чаще всего использовались для проведения занятий? Выведите те, которые использовались максимальное количество раз.                                                                                                         Поля в результирующей таблице:  classroom
SELECT classroom
FROM Schedule
GROUP BY classroom
HAVING COUNT(classroom) = (SELECT COUNT(classroom)   AS c_classroom
                           FROM Schedule
                           GROUP BY classroom
                           ORDER BY classroom DESC 
                           LIMIT 1);


