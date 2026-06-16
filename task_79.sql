Задание #79
Цена со скидкой 10%
Выведите поля id, home_type, price у всего жилья из таблицы Rooms. Если комната имеет телевизор и интернет одновременно, то в качестве цены в поле price выведите цену, применив скидку 10%.
Поля в результирующей таблице:
id  home_type  price

SELECT id,
       home_type,
       CASE
       WHEN has_tv = 1 AND has_internet = 1 THEN price - (price * 0.10)
       ELSE price
       END AS price
FROM Rooms;
