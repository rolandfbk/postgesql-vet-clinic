/*Queries that provide answers to the questions from all projects.*/

/*RUBY - WEEK 1 - PROJECT 1*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-12-31' AND '2019-01-01';
SELECT name FROM animals WHERE neutered = '1' AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = '1';
SELECT * FROM animals WHERE name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= '10.4' AND weight_kg <= '17.3';

/*RUBY - WEEK 1 - PROJECT 2*/

BEGIN;
UPDATE animals SET species = 'unspecified';

ROLLBACK;


BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;


DELETE FROM animals;
ROLLBACK;


BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT UPDATE_ANIMAL_WEIGHT;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO UPDATE_ANIMAL_WEIGHT;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;


SELECT COUNT(*) FROM animals;
SELECT COUNT(name) FROM animals WHERE escape_attempts > 0;
SELECT AVG(weight_kg) FROM animals;
SELECT name, escape_attempts FROM animals WHERE escape_attempts = (select MAX(escape_attempts) FROM animals);
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-12-31' AND '2000-01-01' GROUP BY species;


/*RUBY - WEEK 1 - PROJECT 3*/
SELECT full_name AS Name, name AS animal FROM owners O JOIN animals A ON O.full_name = A.owner_id WHERE full_name = 'Melody Pond';
SELECT A.name AS Animal, S.name AS Species FROM species S JOIN animals A ON S.name = A.species_id WHERE S.name = 'Pokemon';
SELECT full_name AS Name, name AS animal FROM owners O FULL OUTER JOIN animals A ON O.full_name = A.owner_id;
SELECT S.name AS Species, COUNT(A.species_id) FROM species S JOIN animals A ON S.name = A.species_id GROUP BY S.name;
SELECT O.full_name AS Name, A.name AS Animal, S.name AS Species FROM species S JOIN animals A ON S.name = A.species_id JOIN owners O ON O.full_name = A.owner_id WHERE S.name = 'Digimon' AND O.full_name = 'Jennifer Orwell';
SELECT O.full_name AS Name, A.name AS Animal FROM owners O JOIN animals A ON O.full_name = A.owner_id WHERE O.full_name = 'Dean Winchester' AND A.escape_attempts = 0;
SELECT O.full_name AS Name, COUNT(A.owner_id) AS Occurrence FROM owners O JOIN animals A ON O.full_name = A.owner_id GROUP BY O.full_name ORDER BY Occurrence DESC LIMIT 1;
