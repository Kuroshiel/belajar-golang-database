# Ekeskusi Perintah SQL

CREATE TABLE customer (
	id VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

SELECT * FROM customer;

# TIPE DATA COLUMN

DELETE FROM customer;

ALTER TABLE customer
	ADD COLUMN email VARCHAR(100),
    ADD COLUMN balance INTEGER DEFAULT 0,
    ADD COLUMN rating DOUBLE DEFAULT 0.0,
    ADD COLUMN create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ADD COLUMN birth_date DATE,
    ADD COLUMN married boolean DEFAULT false;
    
DESC customer;

INSERT INTO customer(id, name, email, balance, rating, birth_date, married)
VALUES  ('eko', 'Eko', 'eko@gmail.com', 100000, 90.0, '1999-10-10', true),
		('budi', 'Budi', 'budi@gmail.com', 500000, 85.5, '1986-6-10', true),
		('joko', 'Joko', 'joko@gmail.com', 750000, 88.5, '1986-6-10', false);
        
UPDATE customer
SET email = NULL,
	birth_date = NULL 
WHERE id = 'joko';

# SQL Injection

CREATE TABLE user (
	username VARCHAR(100) NOT NULL,
	password VARCHAR(100) NOT NULL,
    PRIMARY KEY (username)
) ENGINE = InnoDB;

SELECT * FROM user;

INSERT INTO user (username, password) VALUES ('admin', 'admin')