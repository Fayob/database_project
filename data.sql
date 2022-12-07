/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Agumon', '2020-02-03', 10.23, true, 0);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Gabumon', '2018-11-15', 8, true, 2);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Pikachu', '2021-01-07', 15.04, false, 1);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts) VALUES ('Devimon', '2017-05-12', 11, true, 5);

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES 
	('Charmander', 'Feb-08-2020', -11, false, 0),
	('Plantmon', 'Nov-15-2021', -5.7, true, 2),
	('Squirtle', 'Apr-02-1993', -12.13, false, 3),
	('Angemon', 'Jun-12-2005', -45, true, 1),
	('Boarmon', 'Jun-07-2005', 20.4, true, 7),
	('Blossom', 'Oct-13-1998', 17, true, 3),
	('Ditto', 'May-14-2022', 22, true, 4);

--  Insert data into owners table

INSERT INTO owners (full_name, age)
VALUES 
	('Sam Smith', 34),
	('Jennifer Orwell', 19),
	('Bob', 45),
	('Melody Pond', 77),
	('Dean Winchester', 14),
	('Jodie Whittaker', 38);

-- Insert data into species table

INSERT INTO species (name)
VALUES 
	('Pokemon'),
	('Digimon');

-- Update animals' species_id

update animals set species_id = 1
where right(name, 3) = 'mon';

update animals set species_id = 1
where right(name, 3) != 'mon';

--  Update animals' owner_id

update animals set owner_id = 1
where name = 'Agumon';

update animals set owner_id = 2
where name = 'Gabumon' or name = 'Pikachu';

update animals set owner_id = 3
where name = 'Devimon' or name = 'Plantmon';

update animals set owner_id = 4
where name = 'Charmander' or name = 'Squirtle' or name = 'Blossom';

update animals set owner_id = 5
where name = 'Angemon' or name = 'Boarmon';
