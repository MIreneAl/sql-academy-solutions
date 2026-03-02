Задание #6 Компании, летавшие на Boeing
Какие компании совершали перелеты на Boeing                                                                                                             Поля в результирующей таблице: name
SELECT DISTINCT c.name
FROM Company AS c
JOIN Trip as t ON t.company = c.id
WHERE t.plane = 'Boeing';
