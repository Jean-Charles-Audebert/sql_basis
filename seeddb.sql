-- Insertion des familles
INSERT INTO family (nom) VALUES 
    ('Nos menus'), 
    ('Nos boissons');
    
-- Insertion des categories
INSERT INTO category (family_id, nom) VALUES
    (1, 'Menu Best of'),
    (1, 'Menu Maxi Best of'),
    (1, 'Menu Mac First'),
    (NULL, 'Happy Meal'),
    (1, 'Nos burgers'),
    (2, 'Nos boissons chaudes'),
    (2, 'Nos boissons froides');

-- Insertion des size
INSERT INTO size (nom) VALUES
    ('25cl'),
    ('40cl'),
    ('50cl'),
    ('');

-- Insertion des produits
INSERT INTO product (nom)  VALUES
    ('Big Mac'),
    ('Mc First'),
    ('Hamburger'),
    ('Cheeseburger'),
    ('Coca'),
    ('Capuccino');
  

-- Insertion category_products
INSERT INTO category_product(category_id, product_id) VALUES
    (1,1),
    (2,1),
    (3,2),
    (4,4),
    (5,1),
    (5,2),
    (5,3),
    (5,4),
    (6,6),
    (7,6);

-- Insertion size_products
INSERT INTO size_product(size_id, product_id) VALUES
    (1,5),
    (2,5),
    (3,5);
