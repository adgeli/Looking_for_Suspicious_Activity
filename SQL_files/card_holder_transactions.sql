--- Group the transactions for each card holder 
CREATE VIEW Card_Holder_Transactions AS
SELECT card_holder.name AS "Card_Holder_Name"
,transaction.date AS "Date"
,transaction.amount AS "Amount"
,merchant_category.name AS "Industry_Classification"
,merchant.name AS "Establishment"
,credit_card.card AS "Credit_Card_No"

FROM card_holder
INNER JOIN credit_card ON card_holder.id = credit_card.cardholder_id
INNER JOIN transaction ON credit_card.card = transaction.card
INNER JOIN merchant ON transaction.id_merchant = merchant.id
INNER JOIN merchant_category ON merchant.id_merchant_category = merchant_category.id
ORDER BY "Card_Holder_Name";






