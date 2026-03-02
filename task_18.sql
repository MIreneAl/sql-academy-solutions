Задание #18 Самый старший человек
Выведите имя самого старшего человека. Если таких несколько, то выведите их всех.                            Поля в результирующей таблице:
SELECT member_name
FROM FamilyMembers
WHERE birthday = (SELECT MIN(birthday)
                  FROM FamilyMembers);
