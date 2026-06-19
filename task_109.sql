Задание #109
Страна города Зальцбург
ДомКлик
Выведите название страны, где находится город «Salzburg»
Поля в результирующей таблице:
country_name

SELECT c.name AS country_name
FROM Countries AS c 
JOIN Regions AS r ON c.id = r.	countryid
JOIN Cities AS cit ON r.id = cit.regionid
WHERE cit.name = 'Salzburg';