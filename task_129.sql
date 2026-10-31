Задание #129

Дана база данных с информацией о компаниях и их счетах. В таблице Company хранится информация о компаниях, в таблице Contract - информация о счетах, в таблице Company_contract - связи между компаниями и их счетами.

Найти номера счетов (contract_number) по компаниям, в названии которых (company_name) встречается 'SBER'.
Поля в результирующей таблице:
contract_number

Решение:
SELECT c.contract_number
FROM Contract AS c  
JOIN Company_contract AS cc ON cc.contract_id = c.contract_id
JOIN Company AS co ON co.company_id = cc.company_id
WHERE company_name LIKE 'SBER%';