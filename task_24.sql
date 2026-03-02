Задание #24 Кто и сколько потратил в июне 2005 года
Определить, кто и сколько потратил в июне 2005                                                                                    Используйте конструкцию "as costs" для отображения затраченной суммы членом семьи. Это необходимо для корректной проверки.                                                                                                                                      Поля в результирующей таблице: member_name, costs
SELECT fm.member_name,
       SUM(p.amount * p.unit_price) AS costs
FROM FamilyMembers AS fm
JOIN Payments AS p ON fm.member_id = p.family_member
WHERE p.date BETWEEN '2005-06-01' AND '2005-06-30'
GROUP BY fm.member_name
ORDER BY costs DESC ;
