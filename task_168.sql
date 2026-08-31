#Задание #168
#Средняя ставка по типу беттинга
#Entain
#В таблице bets поле betting_type принимает значения sports, casino, poker, esports.
#Напишите запрос, который вернёт betting_type и avg_amount — средний размер ставки, округлённый до двух знаков. Отсортируйте по avg_amount по возрастанию.
#Поля в результирующей таблице:
#betting_typeavg_amount

SELECT betting_type,
       ROUND(AVG(bet_amount), 2) AS avg_amount
FROM bets
GROUP BY betting_type
ORDER BY avg_amount ASC;