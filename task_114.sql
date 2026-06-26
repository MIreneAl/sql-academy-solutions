Задание #114
Вторые пилоты в Нью-Йорк
Напишите запрос, который выведет имена пилотов, которые в качестве второго пилота (second_pilot_id) в августе 2023 года летали в New York
Поля в результирующей таблице: name

SELECT name
FROM Pilots, Flights
WHERE destination = 'New York'
AND pilot_id = second_pilot_id 
AND flight_date BETWEEN '2023-08-01' AND '2023-08-31';