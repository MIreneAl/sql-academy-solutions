Задание #93 Средний возраст покупателей Smartwatch
Какой средний возраст клиентов, купивших Smartwatch (использовать наименование товара product.name) в 2024 году?
Поля в результирующей таблице: average_age

Решение:
SELECT AVG(DISTINCT (c.age)) AS average_age
FROM Customer AS c  
JOIN Purchase AS p ON p.customer_key = c.customer_key
JOIN Product AS product ON p.product_key = product.product_key
WHERE p.date BETWEEN '2024-01-01' AND '2024-12-31'
AND product.name = 'Smartwatch';