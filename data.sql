/* Populate database with sample data. */

/*RUBY - WEEK 1 - PROJECT 1*/
INSERT INTO animals VALUES (1, 'Agumon', '2020-02-03', 0, '1', 10.23);
INSERT INTO animals VALUES (2, 'Gabumon', '2018-11-15', 2, '1', 8);
INSERT INTO animals VALUES (3, 'Pikachu', '2021-01-07', 1, '0', 15.04);
INSERT INTO animals VALUES (4, 'Devimon', '2017-05-12', 5, '1', 11);

/*RUBY - WEEK 1 - PROJECT 2*/
INSERT INTO animals VALUES (5, 'Charmander', '2020-02-08', 0, '0', -11);
INSERT INTO animals VALUES (6, 'Plantmon', '2021-11-15', 2, '1', -5.7);
INSERT INTO animals VALUES (7, 'Squirtle', '1993-04-02', 3, '0', -12.13);
INSERT INTO animals VALUES (8, 'Angemon', '2005-06-12', 1, '1', -45);
INSERT INTO animals VALUES (9, 'Boarmon', '2005-06-07', 7, '1', 20.4);
INSERT INTO animals VALUES (10, 'Blossom', '1998-10-13', 3, '1', 17);
INSERT INTO animals VALUES (11, 'Ditto', '2022-05-14', 4, '1', 22);


/*RUBY - WEEK 1 - PROJECT 3*/
INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age) VALUES ('Bob', 45);
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14);
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');


BEGIN;
UPDATE animals SET species_id = 'Digimon' WHERE name LIKE '%mon';
UPDATE animals SET species_id = 'Pokemon' WHERE name NOT LIKE '%mon';
COMMIT;

BEGIN;
UPDATE animals SET owner_id = 'Sam Smith' WHERE name = 'Agumon';
UPDATE animals SET owner_id = 'Jennifer Orwell' WHERE name = 'Gabumon' OR name = 'Pikachu';
UPDATE animals SET owner_id = 'Bob' WHERE name = 'Devimon' OR name = 'Plantmon';
UPDATE animals SET owner_id = 'Melody Pond' WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';
UPDATE animals SET owner_id = 'Dean Winchester' WHERE name = 'Angemon' OR name = 'Boarmon';
COMMIT;


/*RUBY - WEEK 1 - PROJECT 4*/
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Vet William Tatcher', 45, '2000-04-23');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Vet Maisy Smith', 26, '2019-01-17');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Vet Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Vet Jack Harkness', 38, '2008-06-08');


INSERT INTO specializations VALUES (1, 1);
INSERT INTO specializations VALUES (3, 2);
INSERT INTO specializations VALUES (3, 1);
INSERT INTO specializations VALUES (4, 2);


INSERT INTO visits VALUES (1, 1, '2020-05-24');
INSERT INTO visits VALUES (3, 1, '2020-07-22');
INSERT INTO visits VALUES (4, 2, '2021-02-02');
INSERT INTO visits VALUES (2, 3, '2020-01-05');
INSERT INTO visits VALUES (2, 3, '2020-03-08');
INSERT INTO visits VALUES (2, 3, '2020-05-14');
INSERT INTO visits VALUES (3, 4, '2021-05-04');
INSERT INTO visits VALUES (4, 5, '2021-02-24');
INSERT INTO visits VALUES (2, 6, '2019-12-21');
INSERT INTO visits VALUES (1, 6, '2020-08-10');
INSERT INTO visits VALUES (2, 6, '2021-04-07');
INSERT INTO visits VALUES (3, 7, '2019-09-29');
INSERT INTO visits VALUES (4, 8, '2020-10-03');
INSERT INTO visits VALUES (4, 8, '2020-11-04');
INSERT INTO visits VALUES (2, 9, '2019-01-24');
INSERT INTO visits VALUES (2, 9, '2019-05-15');
INSERT INTO visits VALUES (2, 9, '2020-02-27');
INSERT INTO visits VALUES (2, 9, '2020-08-03');
INSERT INTO visits VALUES (3, 10, '2020-05-24');
INSERT INTO visits VALUES (1, 10, '2021-01-11');