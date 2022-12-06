/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE date_of_birth between '2016-01-01' and '2019-12-31';
SELECT * FROM animals WHERE RIGHT(name, 3) = 'mon';
SELECT name FROM animals WHERE neutered = true and escape_attempts < 3;
SELECT name, date_of_birth FROM animals WHERE name in ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg between 10.4 and 17.3;
