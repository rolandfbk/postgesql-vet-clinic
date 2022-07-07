/* Database schema to keep the structure of entire database. */

/*RUBY - WEEK 1 - PROJECT 1*/
CREATE TABLE animals(
  id      			INT,
  name    			VARCHAR(250),
  date_of_birth     DATE,
  escape_attempts   INT,
  neutered     		BIT,
  weight_kg			DECIMAL
);

/*RUBY - WEEK 1 - PROJECT 2*/
ALTER TABLE animals
ADD species varchar(255);

/*RUBY - WEEK 1 - PROJECT 3*/
CREATE TABLE owners(
	id INT GENERATED ALWAYS AS IDENTITY,
	full_name VARCHAR(250),
	age INT
);

CREATE TABLE species(
	id INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(250)
);

ALTER TABLE animals
ALTER COLUMN id SET NOT NULL;

ALTER TABLE animals
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY;

ALTER TABLE animals
ADD PRIMARY KEY(id);

ALTER TABLE animals
DROP COLUMN species;

ALTER TABLE animals
ADD species_id varchar(255);

ALTER TABLE species
ADD UNIQUE(name);

ALTER TABLE animals
ADD CONSTRAINT fk_species
FOREIGN KEY (species_id)
REFERENCES species(name);

ALTER TABLE animals
ADD owner_id varchar(255);

ALTER TABLE owners
ADD UNIQUE(full_name);

ALTER TABLE animals
ADD CONSTRAINT fk_owner
FOREIGN KEY (owner_id)
REFERENCES owners(full_name);


/*RUBY - WEEK 1 - PROJECT 4*/
CREATE TABLE vets(
	id INT GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(250),
	age INT,
	date_of_graduation DATE,
	PRIMARY KEY(id)
);

CREATE TABLE specializations(
	vets_id INT,
	species_id INT
);

ALTER TABLE specializations
ADD CONSTRAINT fk_specializations_vets
FOREIGN KEY (vets_id)
REFERENCES vets(id);

ALTER TABLE species
ADD PRIMARY KEY(id);

ALTER TABLE specializations
ADD CONSTRAINT fk_specializations_species
FOREIGN KEY (species_id)
REFERENCES species(id);

CREATE TABLE visits(
	vets_id INT,
	animals_id INT,
	date_of_visit DATE
);

ALTER TABLE visits
ADD CONSTRAINT fk_visits_vets
FOREIGN KEY (vets_id)
REFERENCES vets(id);

ALTER TABLE visits
ADD CONSTRAINT fk_visits_animals
FOREIGN KEY (animals_id)
REFERENCES animals(id);