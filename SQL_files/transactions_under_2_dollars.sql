--- Count the transactions that are less than $2.00 per cardholder
CREATE VIEW Transactions_Under_2_Dollars AS
SELECT card_holder.name AS "Name"
,COUNT(transaction.amount) AS "Occurence"

FROM card_holder
INNER JOIN credit_card ON card_holder.id = credit_card.cardholder_id
INNER JOIN transaction ON credit_card.card = transaction.card
WHERE Amount < 2 
GROUP BY card_holder.name
ORDER BY "Occurence" DESC;




