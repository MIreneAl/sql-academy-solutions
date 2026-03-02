Задание #27 Траты по группам товаров в 2005 году
Узнайте, сколько было потрачено на каждую из групп товаров в 2005 году. Выведите название группы и потраченную на неё сумму. Если потраченная сумма равна нулю, т.е. товары из этой группы не покупались в 2005 году, то не выводите её.                                                                                              Используйте конструкцию "as costs" для отображения затраченной суммы на конкретную группу товаров. Это необходимо для корректной проверки.                                                                                    Поля в результирующей таблице: good_type_name,  costs
SELECT gt.good_type_name,
       SUM(p.amount * p.unit_price) AS costs
FROM GoodTypes AS gt 
LEFT JOIN Goods as g ON gt.good_type_id = g.type
LEFT JOIN Payments AS p ON p.good = g.good_id 
AND YEAR(p.date) = 2005
GROUP BY gt.good_type_name
HAVING costs > 0
ORDER BY costs DESC; 
