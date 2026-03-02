Задание #17 Траты членов семьи в 2005 году
Определить, сколько потратил в 2005 году каждый из членов семьи. В результирующей выборке не выводите тех членов семьи, которые ничего не потратили.                                                                 Используйте конструкцию "as costs" для отображения затраченной суммы членом семьи. Это необходимо для корректной проверки.                                                                                                                                 Поля в результирующей таблице: member_name, status, costs


SELECT fm.member_name,
       fm.status,
       SUM(p.amount* p.unit_price) AS costs
FROM FamilyMembers AS fm
JOIN Payments AS p ON p.family_member = fm.member_id
WHERE p.date BETWEEN '2005-01-01' AND '2005-12-31'
GROUP BY fm.member_name, fm.member_id,	fm.status
HAVING costs > 0
ORDER BY costs DESC;
