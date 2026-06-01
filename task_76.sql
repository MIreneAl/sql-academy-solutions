#Задание 76
Статус пользователя: собственник/арендатор
Вывести имена всех пользователей сервиса бронирования жилья, а также два признака: является ли пользователь собственником какого-либо жилья (is_owner) и является ли пользователь арендатором (is_tenant). В случае наличия у пользователя признака необходимо вывести в соответствующее поле 1, иначе 0.
Используйте конструкцию "AS is_owner" для отображения признака собственника жилья.
Используйте конструкцию "AS is_tenant" для отображения признака арендатора
Поля в результирующей таблице:
name
is_owner
is_tenant

SELECT name,
   CASE 
   WHEN rs.owner_id IS NOT NULL THEN 1
   ELSE 0
   END AS is_owner,
   CASE 
   WHEN us.user_id IS NOT NULL THEN 1
   ELSE 0 
   END AS is_tenant
FROM Users AS u 
LEFT JOIN (SELECT DISTINCT owner_id
     FROM Rooms) AS rs ON u.id = rs.owner_id
LEFT JOIN (SELECT DISTINCT user_id
     FROM Reservations ) AS us ON u.id = us.user_id
