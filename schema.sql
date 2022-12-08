/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL
);

ALTER TABLE animals ADD species VARCHAR(50)

--  Created Owners Table

CREATE TABLE owners (
	id SERIAL PRIMARY KEY,
	full_name VARCHAR(100),
	age INTEGER
);

--  Created Species Table

CREATE TABLE species (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100)
);

-- Removed Column Species

ALTER TABLE animals DROP COLUMN species;

-- Add column species_id and owner_id

ALTER TABLE animals ADD species_id INTEGER REFERENCES species(id);
ALTER TABLE animals ADD owner_id INTEGER REFERENCES owners(id);

