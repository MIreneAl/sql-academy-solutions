Задание #19 Кто покупал картошку
Определить, кто из членов семьи покупал картошку (potato)                                                                                Поля в результирующей таблице: status


SELECT DISTINCT fm.status
FROM FamilyMembers AS fm 
JOIN Payments AS p ON fm.member_id = p.family_member
JOIN Goods AS  g ON p.good = g.good_id
WHERE g.good_name = 'potato';
