CREATE DATABASE recommendations;

\c recommendations

CREATE TABLE places (id SERIAL PRIMARY KEY, contributor VARCHAR(50), place VARCHAR(50), notes TEXT, type_of_place VARCHAR(50));
