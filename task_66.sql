Задание #66 Комнаты со всеми удобствами
Вывести список комнат со всеми удобствами (наличие ТВ, интернета, кухни и кондиционера), а также общее количество дней и сумму за все дни аренды каждой из таких комнат.                                         
Используйте конструкции "as days" и "as total_fee" для вывода количества дней и суммы аренды, соответственно.                                                                                                                                                    Если комната не сдавалась, то количество дней и сумму вывести как 0.                                                      Поля в результирующей таблице:.home_type, .address,  days,  total_fee
SELECT r.home_type,
              r.address,
              COALESCE(SUM(DATEDIFF(res.end_date, res.start_date)), 0) AS days,
              COALESCE(SUM(res.total), 0) AS total_fee
FROM Rooms AS r   
LEFT JOIN Reservations AS res ON r.id = res.room_id
WHERE has_tv = 1
AND r.has_internet = 1
AND r.has_kitchen = 1
AND r.has_air_con = 1
GROUP BY r.home_type,
               r.address,
               r.id;


