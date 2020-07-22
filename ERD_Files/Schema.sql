-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Drop table if exists 
DROP TABLE IF EXISTS merchant; 
DROP TABLE IF EXISTS merchant_category; 
DROP TABLE IF EXISTS card_holder; 
DROP TABLE IF EXISTS credit_card; 
DROP TABLE IF EXISTS transaction; 

-- Create tables (five)

CREATE TABLE "merchant" (
    "id" INT   NOT NULL,
    "name" VARCHAR(150)   NOT NULL,
    "id_merchant_category" INT   NOT NULL,
    CONSTRAINT "pk_merchant" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "merchant_category" (
    "id" INT   NOT NULL,
    "name" VARCHAR(150)   NOT NULL,
    CONSTRAINT "pk_merchant_category" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "card_holder" (
    "id" INT   NOT NULL,
    "name" VARCHAR(150)   NOT NULL,
    CONSTRAINT "pk_card_holder" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "credit_card" (
    "card" BIGINT   NOT NULL,
    "cardholder_id" INT   NOT NULL,
    CONSTRAINT "pk_credit_card" PRIMARY KEY (
        "card"
     )
);

CREATE TABLE "transaction" (
    "id" INT   NOT NULL,
    "date" TIMESTAMP   NOT NULL,
    "amount" FLOAT   NOT NULL,
    "card" BIGINT   NOT NULL,
    "id_merchant" INT   NOT NULL,
    CONSTRAINT "pk_transaction" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "merchant" ADD CONSTRAINT "fk_merchant_id" FOREIGN KEY("id")
REFERENCES "transaction" ("id_marchant");

ALTER TABLE "merchant_category" ADD CONSTRAINT "fk_merchant_category_id" FOREIGN KEY("id")
REFERENCES "merchant" ("id_merchant_category");

ALTER TABLE "card_holder" ADD CONSTRAINT "fk_card_holder_id" FOREIGN KEY("id")
REFERENCES "credit_card" ("cardholder_id");

ALTER TABLE "credit_card" ADD CONSTRAINT "fk_credit_card_card" FOREIGN KEY("card")
REFERENCES "transaction" ("card");


-- Display tables
SELECT * FROM merchant
SELECT * FROM merchant_category
SELECT * FROM card_holder
SELECT * FROM credit_card
SELECT * FROM transaction

