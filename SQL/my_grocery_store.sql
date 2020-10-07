-- create and select the database
DROP DATABASE IF EXISTS my_grocery_store;
CREATE DATABASE my_grocery_store;
USE my_grocery_store;  -- MySQL command

-- create the tables
CREATE TABLE categories (
  categoryID       INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryName     VARCHAR(255)   NOT NULL,
  PRIMARY KEY (categoryID)
);

CREATE TABLE products (
  productID        INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryID       INT(11)        NOT NULL,
  productCode      VARCHAR(10)    NOT NULL,
  productName      VARCHAR(255)   NOT NULL,
  listPrice        DECIMAL(10,2)  NOT NULL,
  PRIMARY KEY (productID)
);

CREATE TABLE orders (
  orderID        INT(11)        NOT NULL   AUTO_INCREMENT,
  customerID     INT            NOT NULL,
  orderDate      DATETIME       NOT NULL,
  PRIMARY KEY (orderID)
);

-- insert data into the database
INSERT INTO categories VALUES
(1, 'Produce'),
(2, 'Meat'),
(3, 'Personal Care');

INSERT INTO products VALUES
(1, 1, 'leaf', 'Romaine Lettuce, 3 Pack', '2.86'),
(2, 1, 'fruit', 'Tomato 10 lbs', '17.80'),
(3, 1, 'fruit', 'Grapes 2lbs', '11.99'),
(4, 1, 'fruit', 'Strawberries 3lbs', '10.99'),
(5, 1, 'leaf', 'Cabbage', '10.00'),
(6, 1, 'veg', 'Carrot 2lbs', '3.69'),
(7, 1, 'leaf', 'Spinach', '9.99'),
(8, 1, 'leaf', 'Mint', '4.99'),
(9, 1, 'leaf', 'Parsely', '2.86'),
(10, 1, 'leaf', 'Spring Mix', '7.99'),
(11, 1, 'leaf', 'Ceasar Salad', '4.99'),
(12, 1, 'leaf', 'Asian Chicken Salad', '3.99'),
(13, 1, 'fruit', 'Apple 6lbs', '2.86'),
(14, 1, 'fruit', 'Orange 10lbs, 3 Pack', '2.86'),
(15, 1, 'fruit', 'Banana 5lbs', '6.96'),
(16, 1, 'veg', 'Eggplant', '0.69'),
(17, 1, 'veg', 'Broccoli 8lbs', '11.99'),
(18, 2, 'red', 'Pork 3lbs', '9.99'),
(19, 2, 'red', 'Beef 3lbs', '10.99'),
(20, 2, 'red', 'Venison 3lbs', '17.99'),
(21, 2, 'poultry', 'Duck 3lbs', '12.99'),
(22, 2, 'poultry', 'Chicken 31lbs', '50.99'),
(23, 2, 'poultry', 'Quail 3lbs', '16.99'),
(24, 2, 'poultry', 'Chicken Strips 3lbs', '10.99'),
(25, 2, 'red', 'Hamburger Patties 3lbs', '9.99'),
(26, 2, 'poultry', 'Chicken Leg', '6.99'),
(27, 2, 'poultry', 'Chicken thigh', '8.99'),
(28, 2, 'poultry', 'Chicken Breast', '9.99'),
(29, 2, 'fish', 'Talapia', '11.99'),
(30, 2, 'fish', 'Salmon', '16.99'),
(31, 2, 'fish', 'Tuna', '3.99'),
(32, 2, 'fish', 'Crab', '12.99'),
(33, 2, 'red', 'Lamb', '12.99'),
(34, 2, 'red', 'Venison Chop', '19.99'),
(35, 3, 'creme', 'Soft Skin Lotion', '9.99'),
(36, 3, 'creme', 'Baby Soft Baby Lotion', '7.99'),
(37, 3, 'creme', 'Baby Soft Baby Lip Balm', '2.99'),
(38, 3, 'shamp', 'Baby Soft Baby Poo', '5.99'),
(39, 3, 'shamp', 'Soft Skin Lush Lather', '5.99'),
(40, 3, 'shamp', 'Soft Skin Ultra Lush Lather', '7.99'),
(41, 3, 'creme', 'Soft Skin Sun Away', '5.99'),
(42, 3, 'creme', 'Soft Skin Ultra Block', '5.99'),
(43, 3, 'creme', 'Baby Soft Baby Rays', '2.99'),
(44, 3, 'shamp', 'Baby Soft Lice Killer', '14.99'),
(45, 3, 'shamp', 'Soft Skin Lice Killer', '12.99'),
(46, 3, 'creme', 'Nailicious Cuticle Care', '5.99'),
(47, 3, 'creme', 'Soft Skin Cuticle Remover', '3.99'),
(48, 3, 'creme', 'Baby Soft Baby Cuticles', '3.99'),
(49, 3, 'shamp', 'CocoGo Cononut Rinse', '7.99'),
(50, 3, 'creme', 'CocoGo Coconut Hydration', '8.99'),
(51, 3, 'creme', 'CoCoGo Coconut Balm', '5.99');

-- create the users and grant priveleges to those users
GRANT SELECT, INSERT, DELETE, UPDATE
ON my_grocery_store.*
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';

GRANT SELECT
ON products
TO mgs_tester@localhost
IDENTIFIED BY 'pa55word';

