Задание #39  Количество обучающихся в 10 B классе
Сколько обучающихся в 10 B классе ?                                                                                                             Используйте конструкцию "as count" для агрегатной функции подсчета количества учащихся. Это необходимо для корректной проверки.                                                                                                             
Поля в результирующей таблице: count
SELECT COUNT(sc.student) AS count
FROM Student_in_class AS sc
JOIN Class AS c ON c.id = sc.class
WHERE c.name = '10 B';
