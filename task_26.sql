Задание #26  Группы товаров, не купленные в 2005 году
Определить группы товаров, которые не приобретались в 2005 году                                                          Поля в результирующей таблице: good_type_name
SELECT DISTINCT  gt.good_type_name
FROM GoodTypes AS gt
WHERE gt.good_type_id NOT IN(SELECT g.type
                             FROM Goods AS  g
                             JOIN Payments AS p ON g.good_id = p.good
                             WHERE YEAR(p.date) = 2005);


