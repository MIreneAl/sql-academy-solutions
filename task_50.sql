Задание #50  Процент родившихся в 2000 году
Какой процент обучающихся родился в 2000 году? Результат округлить до целого в меньшую сторону.             Используйте конструкцию "as percent" для указания процента. Это необходимо для корректной проверки.     Поля в результирующей таблице:  percent
SELECT FLOOR(COUNT(*) * 100/
              (SELECT COUNT(*)
               FROM Student_in_class)) AS  percent 
FROM Student_in_class AS sc  
JOIN Student AS s ON s.id = sc.student
WHERE YEAR(birthday) = '2000';
