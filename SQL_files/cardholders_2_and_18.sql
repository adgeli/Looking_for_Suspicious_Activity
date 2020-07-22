--- Identify cardholders 2 and 18 
SELECT c.cardholder_id, t.amount, t.date
FROM transaction as t
INNER JOIN credit_card AS c
ON t.card = c.card
WHERE c.cardholder_id = 2 OR c.cardholder_id = 18
ORDER BY c.cardholder_id;



