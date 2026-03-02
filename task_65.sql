Задание #65 Рейтинг арендованных комнат
Необходимо вывести рейтинг для комнат, которые хоть раз арендовали, как среднее значение рейтинга отзывов округленное до целого вниз.                                                                                                   
Используйте конструкцию "as rating" для вывода рейтинга.                                                                                        Поля в результирующей таблице: .room_id,  rating
SELECT res.room_id,
       FLOOR(AVG(rev.rating)) AS rating
FROM Reservations AS res   
JOIN Reviews AS rev ON  res.id = rev.reservation_id
GROUP BY res.room_id
ORDER BY rating DESC; 
