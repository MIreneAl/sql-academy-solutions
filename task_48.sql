Задание #48 Заполненность классов
Выведите заполненность классов в порядке убывания                                                                             Используйте конструкцию "as count" для агрегатной функции подсчета числа учащихся в классах. Это необходимо для корректной проверки.                                                                                                            
Поля в результирующей таблице:  name,  count
SELECT c.name,
       COUNT(sc.student) AS count
FROM Class AS c  
JOIN Student_in_class AS sc ON c.id = sc.class
GROUP BY  c.name
ORDER BY count DESC;
