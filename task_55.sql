Задание #55 Удалить компании с наименьшим числом рейсов
Удалить компании, совершившие наименьшее количество рейсов.
SELECT company, COUNT(*) AS trip_count
FROM Trip
GROUP BY company;


DELETE FROM Company
WHERE id IN (2, 3, 4);
