Задание #15 Прибытие Steve Martin в Лондон
Выведите идентификатор пассажира Стив Мартин (Steve Martin) и дату и время его прилёта в Лондон (London).                                                                                                                                                                   Поля в результирующей таблице: id, time_in
SELECT p.id,
       t.time_in
FROM Pass_in_trip AS pt 
JOIN Trip AS t on pt.trip = t.id
JOIN Passenger AS p ON pt.passenger = p.id
WHERE p.name = 'Steve Martin'
AND  town_to = 'London';
