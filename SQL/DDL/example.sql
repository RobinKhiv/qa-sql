-- customer product orders 

CREATE TABLE customer (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE product (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    quantity INT DEFAULT 0,
    PRIMARY KEY (id)
);

CREATE TABLE orders (
    id INT NOT NULL AUTO_INCREMENT,
    fk_customer_id INT NOT NULL,
    fk_product_id INT NOT NULL,
    PRIMARY KEY (id),
    KEY (fk_customer_id),
    KEY (fk_product_id),
    FOREIGN KEY (fk_customer_id) 
        REFERENCES customer(id),
    FOREIGN KEY (fk_product_id) 
        REFERENCES product(id)
);

ALTER TABLE orders 
ADD quantity INT DEFAULT 1;
