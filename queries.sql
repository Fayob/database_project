/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE date_of_birth between '2016-01-01' and '2019-12-31';
SELECT * FROM animals WHERE RIGHT(name, 3) = 'mon';
SELECT name FROM animals WHERE neutered = true and escape_attempts < 3;
SELECT name, date_of_birth FROM animals WHERE name in ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg between 10.4 and 17.3;

--  Transaction

BEGIN;

UPDATE animals SET species = 'unspecified';

ROLLBACK;

--  Another Transaction

BEGIN;

UPDATE animals SET species = 'digimon' WHERE RIGHT(name, 3) = 'mon';
UPDATE animals SET species = 'pokemon' WHERE species = 'null';

COMMIT;

SELECT * FROM animals

--  Another Transaction

BEGIN;

DELETE FROM animals;

ROLLBACK;

SELECT * FROM animals

--  Another Transaction

BEGIN;

SAVEPOINT SP1;

DELETE FROM animals WHERE date_of_birth > 'Jan-01-2022';

SAVEPOINT SP2;

UPDATE animals SET weight_kg = weight_kg * -1;

ROLLBACK TO SP2;

UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

COMMIT;

SELECT * FROM animals;

-- Checks

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered FROM animals 
GROUP BY neutered ORDER BY COUNT(escape_attempts) DESC LIMIT 1;
select species, min(weight_kg) as minimum, max(weight_kg) as maximum from animals 
GROUP BY species
select species, avg(escape_attempts) from animals 
where extract(YEAR FROM date_of_birth) BETWEEN 1990 AND 2000 GROUP BY species

-- What animals belong to Melody Pond?

select name from animals 
join owners on owners.id = animals.owner_id
where owners.full_name = 'Melody Pond';

--  List of all animals that are pokemon (their type is Pokemon).

select animals.name as animals_name from animals 
join species on species.id = animals.species_id
where species.name = 'Pokemon';

-- List all owners and their animals, remember to include those that don't own any animal.

select name as animal_name, full_name as owners_name from owners 
left join animals on owners.id = animals.owner_id;

-- How many animals are there per species?

select species.name, count(*) from animals 
left join species on species.id = animals.species_id
group by species.name;

-- List all Digimon owned by Jennifer Orwell.

select animals.name as animals_name from animals
join species on species.id = animals.species_id
join owners on owners.id = animals.owner_id
where species.name = 'Digimon' and owners.full_name = 'Jennifer Orwell'

-- List all animals owned by Dean Winchester that haven't tried to escape.

select name from animals
join owners on owners.id = animals.owner_id
where owners.full_name = 'Dean Winchester' and animals.escape_attempts = 0;

-- Who owns the most animals?

SELECT full_name as highest_owner, count(full_name) as maximum from animals
join owners on owners.id = animals.owner_id
group by owners.full_name 
order by maximum 
DESC LIMIT 1;
