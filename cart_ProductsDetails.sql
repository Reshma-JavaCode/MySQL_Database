use batch72;
CREATE TABLE cart (
  product_id int NOT NULL,
  product_name varchar(50) DEFAULT NULL,
  product_price decimal(10,2) NOT NULL,
  product_quantity int NOT NULL,
  PRIMARY KEY (product_id)
  );
  insert into cart values(100, 'Laptop', 45000, 2),(101, 'Mouse', 500, 1);
  insert into cart values(102, 'keyboard', 1200, 2),(103, 'TV', 55000, 1);
  select * from cart;
/*
product_id, product_name, product_price, product_quantity
100, Laptop, 45000.00, 2
101, Mouse, 500.00, 1
102, keyboard, 1200.00, 1
103, TV, 55000.00, 2
*/
