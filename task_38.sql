Задание #38 Количество учениц с именем Анна
Сколько учениц с именем Анна (Anna) учится в школе?                                                                             Используйте конструкцию "as count" для агрегатной функции подсчета количества учащихся. Это необходимо для корректной проверки.                                                                                                                  Поля в результирующей таблице: count
SELECT COUNT(sc.student) AS count
FROM Student_in_class AS sc
JOIN Student AS s on s.id = sc.student
WHERE s.first_name = 'Anna';
