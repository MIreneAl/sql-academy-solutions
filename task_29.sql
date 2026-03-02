Задание #29 Имена пассажиров, летящих в Москву
Выведите имена пассажиров, летевших в Москву (Moscow) на самолете TU-134. В ответе не должно быть дубликатов.                                                                                                                                                 Поля в результирующей таблице: name
SELECT DISTINCT p.name
FROM Passenger AS p
LEFT JOIN Pass_in_trip AS pt ON p.id = pt.passenger
LEFT JOIN Trip AS t ON pt.trip = t.id
WHERE plane = 'TU-134' AND town_to = 'Moscow';
