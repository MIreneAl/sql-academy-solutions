Задание #184
VIP-пользователи по числу транзакций
В таблице transactions хранятся транзакции пользователей Kaspi: user_id — пользователь, transaction_date — дата, amount — сумма.
Аналитики выделяют VIP-пользователей — тех, кто за январь 2024 совершил более 5 транзакций.
Выведите user_id и transactions_count (число транзакций за январь 2024) таких пользователей. Отсортируйте по user_id по возрастанию.
Поля в результирующей таблице:
user_idtransactions_count
Решение:
SELECT user_id,
       COUNT(transaction_id) AS  transactions_count
FROM transactions
WHERE transaction_date BETWEEN '2024-01-01' AND '2024-01-31'
GROUP BY user_id
HAVING transactions_count>5
ORDER BY user_id ASC;