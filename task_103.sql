Задание #103 Зарплата выше руководителя
Вывести список имён сотрудников, получающих большую заработную плату, чем у непосредственного руководителя.                                                                                                                                                                      Поля в результирующей таблице: name
SELECT e.name
FROM Employee AS e
JOIN Employee m ON e.chief_id = m.id
WHERE e.salary > m.salary;
