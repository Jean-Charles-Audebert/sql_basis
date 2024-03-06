
BEGIN;

CREATE TABLE IF NOT EXISTS family (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    CONSTRAINT family_nom_key UNIQUE (nom)
);

CREATE TABLE IF NOT EXISTS category (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    family_id INTEGER REFERENCES family(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS size (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS product (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS category_product (
    category_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    PRIMARY KEY (category_id, product_id),
    FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE SET NULL,
    FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS size_product (
    size_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    PRIMARY KEY (size_id, product_id),
    FOREIGN KEY (size_id) REFERENCES size(id) ON DELETE SET NULL,
    FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE SET NULL
);


COMMIT;