Задание #21 Товары, купленные более одного раза
Определить товары, которые покупали более 1 раза                                                                                    Поля в результирующей таблице: good_name
SELECT g.good_name
FROM Goods AS g
JOIN Payments AS p ON p.good = g.good_id
GROUP BY g.good_name
HAVING COUNT(*) > 1;
