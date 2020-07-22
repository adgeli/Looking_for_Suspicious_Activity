--- Identify cardholder 25
SELECT c.cardholder_id
,t.amount
,mc.name AS "Industry_Classification"
,m.name AS "Establishment"
,t.date 
FROM transaction as t
INNER JOIN credit_card AS c ON t.card = c.card
INNER JOIN merchant AS m ON t.id_merchant = m.id
INNER JOIN merchant_category as mc ON m.id_merchant_category = mc.id
WHERE c.cardholder_id = 25 AND EXTRACT(MONTH FROM date) BETWEEN 1 AND 6
ORDER BY t.date;


