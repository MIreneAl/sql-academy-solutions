Задание #179 Выручка по городам
В таблице bookings хранятся бронирования объектов из properties. Учитывайте только завершённые бронирования (status = 'completed').
Напишите запрос, который вернёт city и total_revenue (суммарную стоимость завершённых бронирований в этом городе). Отсортируйте по total_revenue по убыванию.

Решение:
SELECT p.city,
       SUM(b.total_price) AS total_revenue
FROM properties AS p
JOIN bookings AS b ON p.property_id	= b.property_id	
WHERE b.status = 'completed'
GROUP BY p.city
ORDER BY total_revenue DESC;