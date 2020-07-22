--- Check the validity of the results for the card holders displayed above
--- Card holder: "Meagan Price"
SELECT card_holder.name AS "Name"
,transaction.amount AS "Amount"
,merchant_category.name AS "Industry_Classification"
,merchant.name AS "Establishment"
,transaction.date AS "Date"
	   	     
From card_holder 
INNER JOIN credit_card ON card_holder.id = credit_card.cardholder_id
INNER JOIN transaction ON credit_card.card = transaction.card
INNER JOIN merchant ON transaction.id_merchant = merchant.id
INNER JOIN merchant_category ON merchant.id_merchant_category = merchant_category.id
WHERE card_holder.name = 'Megan Price' AND transaction.amount < 2
ORDER BY transaction.date;

--- Card holder: "Stephanie Dalton" 
SELECT card_holder.name AS "Name"
,transaction.amount AS "Amount"
,merchant_category.name AS "Industry_Classification"
,merchant.name AS "Establishment"
,transaction.date AS "Date"
	   	     
From card_holder 
INNER JOIN credit_card ON card_holder.id = credit_card.cardholder_id
INNER JOIN transaction ON credit_card.card = transaction.card
INNER JOIN merchant ON transaction.id_merchant = merchant.id
INNER JOIN merchant_category ON merchant.id_merchant_category = merchant_category.id
WHERE card_holder.name = 'Stephanie Dalton' AND transaction.amount < 2
ORDER BY transaction.date;

--- Card holder: "Peter Mckay"
SELECT card_holder.name AS "Name"
,transaction.amount AS "Amount"
,merchant_category.name AS "Industry_Classification"
,merchant.name AS "Establishment"
,transaction.date AS "Date"
	   	     
From card_holder 
INNER JOIN credit_card ON card_holder.id = credit_card.cardholder_id
INNER JOIN transaction ON credit_card.card = transaction.card
INNER JOIN merchant ON transaction.id_merchant = merchant.id
INNER JOIN merchant_category ON merchant.id_merchant_category = merchant_category.id
WHERE card_holder.name = 'Peter Mckay' AND transaction.amount < 2
ORDER BY transaction.date;

--- Card holder: "Brandon Pineda"
SELECT card_holder.name AS "Name"
,transaction.amount AS "Amount"
,merchant_category.name AS "Industry_Classification"
,merchant.name AS "Establishment"
,transaction.date AS "Date"
	   	     
From card_holder 
INNER JOIN credit_card ON card_holder.id = credit_card.cardholder_id
INNER JOIN transaction ON credit_card.card = transaction.card
INNER JOIN merchant ON transaction.id_merchant = merchant.id
INNER JOIN merchant_category ON merchant.id_merchant_category = merchant_category.id
WHERE card_holder.name = 'Brandon Pineda' AND transaction.amount < 2
ORDER BY transaction.date;







