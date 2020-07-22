--- Group the transactions for the time period of 7 am to 9 am 
CREATE VIEW Top_100_Transactions AS
SELECT transaction.date AS "Date"
,transaction.amount AS "Amount"
,merchant_category.name AS "Industry_Classification"
,merchant.name AS "Establishment"
,card_holder.name AS "Card_Holder_Name"
,credit_card.card AS "Credit_Card_No"

FROM card_holder
INNER JOIN credit_card ON card_holder.id = credit_card.cardholder_id
INNER JOIN transaction ON credit_card.card = transaction.card
INNER JOIN merchant ON transaction.id_merchant = merchant.id
INNER JOIN merchant_category ON merchant.id_merchant_category = merchant_category.id

--- List the top 100 transactions between 7 am and 9 am 
WHERE EXTRACT(HOUR FROM Date) >= 7 AND EXTRACT(HOUR FROM Date) < 9
ORDER BY Amount DESC LIMIT 100;





