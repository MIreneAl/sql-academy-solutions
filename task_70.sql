Задание #70 Категоризация жилья по цене
Необходимо категоризовать жилье на economy, comfort, premium по цене соответственно <= 100, 100 < цена < 200, >= 200. В качестве результата вывести таблицу с названием категории и количеством жилья, попадающего в данную категорию.
Используйте конструкцию "as category" и "as count" для вывода названия категории и количества такого жилья соответственно.
Поля в результирующей таблице:category. count

Решение:

SELECT 
(CASE 
WHEN price <= 100 THEN 'economy'
WHEN price > 100 AND price < 200 THEN 'comfort'
WHEN price >= 200 THEN 'premium'
END) AS category,
      COUNT(*) AS count
FROM Rooms 
GROUP BY category

# Добавить сортировку:
#ORDER BY (CASE 
#WHEN category = 'economy' THEN 1
#WHEN category = 'comfort' then 2
#ELSE 3
#END) ASC 