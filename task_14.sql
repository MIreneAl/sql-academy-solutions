Задание #14 Города, которые посетил Bruce Willis
В какие города летал Bruce Willis                                                                                                                             Поля в результирующей таблице: town_to
SELECT t.town_to
FROM Trip AS t
JOIN Pass_in_trip AS pt ON t.id = pt.trip
JOIN Passenger AS p ON pt.passenger = p.id
WHERE p.name = 'Bruce Willis';
