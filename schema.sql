/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
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


-- Create a table named vets

CREATE TABLE vets (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	age INTEGER,
	date_of_graduation DATE
);

CREATE TABLE specializations (
	id serial PRIMARY KEY,
	vets_id INTEGER REFERENCES vets(id) ON DELETE CASCADE,
	species_id INTEGER REFERENCES species(id) ON DELETE CASCADE
);

CREATE TABLE visits (
  vets_id INTEGER REFERENCES vets(id) ON DELETE CASCADE,
  animals_id INTEGER REFERENCES animals(id) ON DELETE CASCADE,
	visits_date DATE
);
