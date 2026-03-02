Задание #64 Количество бронирований по месяцам
Вывести количество бронирований по каждому месяцу каждого года, в которых было хотя бы 1 бронирование. Результат отсортируйте в порядке возрастания даты бронирования.                      
Используйте конструкцию "as year", "as month" и "as amount" для вывода года и месяца бронирования, количества таких бронирований соответственно.                                                                                                 Поля в результирующей таблице:  year, month,  amount.


SELECT YEAR(start_date) AS year,
               MONTH(start_date) AS month,
               COUNT(*) AS amount
FROM Reservations
GROUP BY year, month
HAVING  COUNT(*) >=1
ORDER BY year, month ASC; 
