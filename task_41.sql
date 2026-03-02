Задание #41 Начало четвёртого занятия
Выясните, во сколько по расписанию начинается четвёртое занятие.                                                                    Поля в результирующей таблице: start_pair
SELECT DISTINCT t.start_pair
FROM Timepair AS t
JOIN Schedule AS s ON t.id = s.number_pair
WHERE s.number_pair = 4
