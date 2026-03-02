Задание #25 Товары, не купленные в 2005 году
Определить, какие товары не покупались в 2005 году                                                                                     Все доступные к покупке продукты находятся в таблице Goods                                                                          Поля в результирующей таблице: good_name
SELECT g.good_name
FROM Goods AS g
WHERE good_id NOT IN (SELECT good
                      FROM Payments
                      WHERE date BETWEEN '2005-01-01' AND '2005-12-31');
