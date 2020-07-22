--- Top five merchants prone to being hacked using small transactions
CREATE VIEW Top_5_Merchants_Prone_to_Hacking AS
SELECT merchant_category.name AS "Industry_Classification"
,merchant.name AS "Establishment"
,COUNT(transaction.amount) AS "Occurence"

FROM transaction
INNER JOIN merchant ON transaction.id_merchant = merchant.id
INNER JOIN merchant_category on merchant.id_merchant_category = merchant_category.id
WHERE transaction.amount < 2
GROUP BY "Industry_Classification", "Establishment"
ORDER BY "Occurence" DESC LIMIT 5; 



