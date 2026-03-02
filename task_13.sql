Задание #13 Полные тёзки
Вывести имена людей, у которых есть полный тёзка среди пассажиров.                                                            Поля в результирующей таблице: name
SELECT name
FROM Passenger
GROUP BY name
HAVING COUNT(name) >= 2
