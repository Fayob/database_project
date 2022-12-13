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

update animals set species_id = 2
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


-- insert data into vets

INSERT INTO vets (name, age, date_of_graduation)
VALUES 
	('William Tatcher', 45, 'Apr-23-2000'),
  ('Maisy Smith', 26, 'Jan-17-2019'),
  ('Stephanie Mendez', 64, 'May-04-1981'),
  ('Jack Harkness', 38, 'Jun-08-2008');

-- insert data into specialization

INSERT INTO specializations (vets_id, species_id)
VALUES 
	(1, 1),
  (3, 2),
  (3, 1),
  (4, 2);

-- insert data into visits

INSERT INTO visits (animals_id, vets_id, visits_date)
VALUES 
  (1, 1, 'May-24-2020'),
  (1, 3, 'Jul-22-2020'),
  (2, 4, 'Feb-02-2021'),
  (3, 2, 'Jan-05-2020'),
  (3, 2, 'Mar-08-2020'),
  (3, 2, 'May-14-2020'),
  (4, 3, 'May-04-2021'),
  (5, 4, 'Feb-24-2021'),
  (6, 2, 'Dec-21-2019'),
  (6, 1, 'Aug-10-2020'),
  (6, 2, 'Apr-07-2021'),
  (7, 3, 'Sep-29-2019'),
  (8, 4, 'Oct-03-2020'),
  (8, 4, 'Nov-04-2020'),
  (9, 2, 'Jan-24-2019'),
  (9, 2, 'May-15-2019'),
  (9, 2, 'Feb-27-2020'),
  (9, 2, 'Aug-03-2020'),
  (10, 3, 'May-24-2020'),
  (10, 1, 'Jan-11-2021');


-- Add email column to owners table

ALTER TABLE owners ADD COLUMN email VARCHAR(120);

