INSERT INTO customer ('name', surname, age)
VALUES
    ('robin', 'khiv', 10),
    ('rob', 'smith', 12),
    ('beth', 'lopez', 13),
    ('sarah', 'croft', 15),
    ('john', 'smith', 16);

INSERT INTO product ('name', quantity)
VALUES
    ('spray paint', 2000),
    ('tape gun', 2000),
    ('stapler', 100),
    ('pencil', 1000),
    ('office chair', 100);

INSERT INTO orders (fk_customer_id)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5);

INSERT INTO product-order (fk_order_id, fk_product_id, quantity)
VALUES
    (1, 3, 20),
    (1, 4, 20),
    (2, 2, 40),
    (2, 4, 21),
    (3, 1, 24),
    (4, 2, 25);



