Задание #23 Самый дорогой деликатес
Найдите самый дорогой деликатес (delicacies) и выведите его цену                                                              Поля в результирующей таблице: good_name, .unit_price
SELECT g.good_name,
       p.unit_price
FROM Goods AS g
JOIN Payments AS p ON g.good_id = p.good
JOIN GoodTypes AS gt ON g.type = gt.good_type_id
WHERE good_type_name LIKE  '%delicacies%'
ORDER BY p.unit_price DESC 
LIMIT 1;
