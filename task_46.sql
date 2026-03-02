Задание #46  Классы преподавателя Krauze
В каких классах введет занятия преподаватель "Krauze" ?                                                                              Поля в результирующей таблице: name
SELECT DISTINCT c.name
FROM Class AS c
JOIN Schedule AS s ON c.id = s.class
JOIN Teacher AS t ON t.id = s.teacher
WHERE t.last_name = 'Krauze';
