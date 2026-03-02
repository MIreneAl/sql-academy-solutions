Задание #9 Компании с рейсами из Владивостока
Какие компании организуют перелеты из Владивостока (Vladivostok)?                                                            Поля в результирующей таблице: name
SELECT c.name
FROM Company AS c
JOIN Trip AS t ON c.id = t.company
WHERE town_from = 'Vladivostok';
