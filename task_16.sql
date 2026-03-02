Задание #16 Сортировка пассажиров по количеству полетов
Вывести отсортированный по количеству перелетов (по убыванию) и имени (по возрастанию) список пассажиров, совершивших хотя бы 1 полет.                                                                                            Используйте конструкцию "as count" для агрегатной функции подсчета количества перелетов. Это необходимо для корректной проверки.                                                                                                                   Поля в результирующей таблице: name,  count
SELECT p.name,
       COUNT(*) as count
FROM Passenger AS p
JOIN Pass_in_trip AS pt ON p.id = pt.passenger 
JOIN Trip AS t ON pt.trip = t.id
GROUP BY p.name
HAVING COUNT(*) >=1
ORDER BY count DESC, p.name ASC;
